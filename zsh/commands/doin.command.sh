function doin() {
  if [ "$#" -lt 2 ]; then
    echo "Usage: doin <directory> <command> [arguments...]"
    return 1
  fi

  local dir=$1
  shift
  local cmd=$@

  if [ ! -d "$dir" ]; then
    echo "Directory $dir does not exist."
    return 1
  fi

  (cd "$dir" && eval "$cmd")
}
