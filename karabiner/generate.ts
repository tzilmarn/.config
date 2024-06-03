#!/usr/bin/env bun

import path from 'path'
import { KarabinerRules } from './types'

import commands from './commands.json'
import { createHyperSubLayers, run } from './utils'

const rules: KarabinerRules[] = createHyperSubLayers(
	Object.entries(commands).reduce((acc, [key, value]) => {
		acc[key] = Object.entries(value.commands).reduce(
			(subAcc, [subKey, subValue]) => {
				subAcc[subKey] = run(subValue.command, subValue.description)
				return subAcc
			},
			{}
		)
		return acc
	}, {})
)

const config = {
	global: {
		ask_for_confirmation_before_quitting: true,
		check_for_updates_on_startup: true,
		show_in_menu_bar: false,
		show_profile_name_in_menu_bar: false,
		unsafe_ui: false,
	},
	profiles: [
		{
			name: 'Default',
			complex_modifications: {
				parameters: {
					'basic.to_delayed_action_delay_milliseconds': 500,
					'basic.to_if_alone_timeout_milliseconds': 2000,
					'basic.to_if_held_down_threshold_milliseconds': 100,
					'basic.simultaneous_threshold_milliseconds': 500,
					'mouse_motion_to_scroll.speed': 100,
				},
				rules,
			},
			simple_modifications: [
				{
					from: {
						key_code: 'left_shift',
					},
					to: [
						{
							key_code: 'left_control',
						},
					],
				},
			],
		},
	],
}

// Add additional json rules
const glob = new Bun.Glob('*.rule.json')
for await (const file of glob.scan('.')) {
	config.profiles[0].complex_modifications.rules.push(
		await Bun.file(file).json()
	)
}

// Write to file
const outfile = Bun.file(path.resolve(__dirname, 'karabiner.json'))
await Bun.write(outfile, JSON.stringify(config, null, 2))
