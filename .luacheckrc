std = "lua51"
max_line_length = false
codes = true

not_globals = {
	"arg", -- arg is a standard global, so without this it won't error when we typo "args" in a module
}
read_globals = {
	"BigWigsAPI",
	"BigWigsLoader",
	"PlaySoundFile",
}
