import { KarabinerRules } from './types'
import { createHyperSubLayers, app, open, openBackground } from './utils'

export const rules: KarabinerRules[] = [
	...createHyperSubLayers({
		// Application
		a: {
			n: app('Notion'),
			f: app('Finder'),
			s: app('Safari'),
			d: app('Kitty'),
			m: app('Mail'),
			c: app('ChatGPT'),
			r: app('Reminders'),
			y: app('YouTube'),
			x: app('Chromium'),
			w: app('WhatsApp'),
			i: app('Instagram'),
			a: open(''),
		},

		// Find
		f: {
			e: open('raycast://'),
			w: open('raycast://extensions/raycast/navigation/switch-windows'),
			k: open('raycast://extensions/rolandleth/kill-process/index'),
			l: open('raycast://extensions/raycast/file-search/search-files'),
			c: open(
				'raycast://extensions/raycast/clipboard-history/clipboard-history'
			),
			m: open('raycast://extensions/fedevitaledev/music/play-library-track'),
			h: open('raycast://extensions/raycast/navigation/search-menu-items'),
			f: open(''),
		},

		// Windowing
		w: {
			l: openBackground(
				'raycast://extensions/raycast/window-management/right-half'
			),
			h: openBackground(
				'raycast://extensions/raycast/window-management/left-half'
			),
			j: openBackground(
				'raycast://extensions/raycast/window-management/reasonable-size'
			),
			k: openBackground(
				'raycast://extensions/raycast/window-management/almost-maximize'
			),
			u: openBackground(
				'raycast://extensions/raycast/window-management/maximize'
			),
			f: openBackground(
				'raycast://extensions/raycast/window-management/toggle-fullscreen'
			),
			w: openBackground(''),
		},

		// Settings
		x: {
			i: open('raycast://extensions/benvp/audio-device/set-input-device'),
			o: open('raycast://extensions/benvp/audio-device/set-output-device'),
			l: open('raycast://extensions/raycast/system/lock-screen'),
			q: open('raycast://extensions/raycast/system/quit-all-applications'),
			x: open(''),
		},
	}),
]
