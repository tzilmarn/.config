return {
	"echasnovski/mini.indentscope",
	version = false,
	config = function()
		local miniindentscope = require("mini.indentscope")
		miniindentscope.setup({
			draw = {
				delay = 50,
				animation = miniindentscope.gen_animation.none(),
			},
		})
	end,
}
