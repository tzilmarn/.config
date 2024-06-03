#!/usr/bin/env bun

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title View Karabiner Shortcuts
// @raycast.mode fullOutput

// Optional parameters:
// @raycast.icon 🤖

import commands from '../../karabiner/commands.json'

Object.entries(commands).forEach(
	([layerKey, { description: layerDescription, commands }]) => {
		console.log(`\x1b[31;m${layerKey}\x1b[0m: ${layerDescription}`)
		Object.entries(commands).forEach(([commandKey, { description }]) => {
			console.log(`\t \x1b[33;m${commandKey}\x1b[0m: ${description}`)
		})
	}
)
