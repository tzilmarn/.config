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
			v: open(
				'raycast://extensions/massimiliano_pasquini/raycast-ollama/ollama-chat'
			),
			r: app('Reminders'),
			y: app('YouTube'),
			x: app('Firefox Developer Edition'),
			w: app('WhatsApp'),
			i: app('Instagram'),
			e: app('Neovide'),
			a: open(''),
		},

		// Find
		f: {
			// Switch windows
			w: open('raycast://extensions/raycast/navigation/switch-windows'),

			// Kill process
			k: open('raycast://extensions/rolandleth/kill-process/index'),

			// Search files
			l: open('raycast://extensions/raycast/file-search/search-files'),

			// Clipboard history
			c: open(
				'raycast://extensions/raycast/clipboard-history/clipboard-history'
			),

			// Search music track
			m: open('raycast://extensions/fedevitaledev/music/play-library-track'),

			// Search menu items
			h: open('raycast://extensions/raycast/navigation/search-menu-items'),

			// Manage downloads
			d: open('raycast://extensions/thomas/downloads-manager/manage-downloads'),

			// Search Safari tabs
			s: open('raycast://extensions/loris/safari/cloud-tabs'),

			// Browse files
			e: open('raycast://extensions/erics118/file-manager/manage-files'),

			// Search github
			g: open('raycast://extensions/raycast/github/search-repositories'),

			f: open(''),
		},

		// Web
		w: {
			g: open('https://github.com'),
			r: open('https://reddit.com'),
			i: open('https://instagram.com'),
			x: open('https://x.com'),
			w: open(''),
		},

		// Windowing
		s: {
			// Right half
			l: openBackground(
				'raycast://extensions/raycast/window-management/right-half'
			),

			// Left half
			h: openBackground(
				'raycast://extensions/raycast/window-management/left-half'
			),

			// Reasonable size
			j: openBackground(
				'raycast://extensions/raycast/window-management/reasonable-size'
			),

			// Almost maximize
			k: openBackground(
				'raycast://extensions/raycast/window-management/almost-maximize'
			),

			// Maximize
			u: openBackground(
				'raycast://extensions/raycast/window-management/maximize'
			),

			// Fullscreen
			f: openBackground(
				'raycast://extensions/raycast/window-management/toggle-fullscreen'
			),

			// Make smaller
			n: openBackground(
				'raycast://extensions/raycast/window-management/make-smaller'
			),

			// Make smaller
			m: openBackground(
				'raycast://extensions/raycast/window-management/make-larger'
			),

			w: openBackground(''),
		},

		// Tools
		k: {
			// Screenshot popup
			s: openBackground('cleanshot://all-in-one'),

			// Screensho area to clipboard
			c: openBackground('cleanshot://capture-area?action=copy'),

			k: openBackground(''),
		},

		// Settings
		x: {
			// Set input device
			i: open('raycast://extensions/benvp/audio-device/set-input-device'),

			// Set output device
			o: open('raycast://extensions/benvp/audio-device/set-output-device'),

			// Lock screen
			l: open('raycast://extensions/raycast/system/lock-screen'),

			// Quit all apps
			q: open('raycast://extensions/raycast/system/quit-all-applications'),

			// Toggle system appearance
			t: open('raycast://extensions/raycast/system/toggle-system-appearance'),

			// Toggle stage manager
			m: open('raycast://extensions/raycast/system/toggle-stage-manager'),

			// Start screen saver
			e: open('raycast://extensions/koinzhang/screen-saver/start-screen-saver'),

			x: open(''),
		},
	}),
]
