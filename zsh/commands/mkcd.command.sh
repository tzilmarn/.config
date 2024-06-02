# Creates a directory and changes to it
function mkcd() {
	if [ "$#" -lt 1 ]; then
		echo "Usage: mkcd <directory>"
		return 1
	fi

	local dir=$1

	if [ -d "$dir" ]; then
		echo "Directory $dir already exists."
		return 1
	fi

	mkdir -p "$dir" && cd "$dir"
}
