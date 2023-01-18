#!/bin/zsh
THIS_FILE=$(basename $0)
THIS_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source $THIS_DIR/settings.sh

function startup () {
    docker-compose up -d
}

function down () {
    docker-compose down
}

option=$1
if [[ $option = "startup" ]]; then
    source ${THIS_DIR}/mount.sh
    startup
    return 0
elif [[ $option = "down" ]]; then
    down
    return 0
elif [[ $option = "restart" ]]; then
    down
    startup
    return 0
fi

echo "specify startup or down"
return -1
