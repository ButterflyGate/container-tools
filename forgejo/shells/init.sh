#!/bin/zsh
INIT_FILE_PATH=$(basename $0)
INIT_FILE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source ${INIT_FILE_DIR}/settings.sh

function make_directory () {
    for DIRECTORY_NAME in ${VOLUME_DIRS[*]}; do
        if [[ -e ${INIT_FILE_DIR}/../volumes/${DIRECTORY_NAME} ]]; then
            echo "existed volumes/${DIRECTORY_NAME}"
        else
            mkdir -p ${INIT_FILE_DIR}/../volumes/${DIRECTORY_NAME}
            echo "created volumes/${DIRECTORY_NAME}"
        fi
    done
}

function copy_envs () {
    for ENV_FILE_NAME in ${ENV_FILES[*]}; do
        if [[ -e ${INIT_FILE_DIR}/../envs/${ENV_FILE_NAME} ]] ; then
            echo "existed envs/${ENV_FILE_NAME}"
        else
            cp ${INIT_FILE_DIR}/../envs/${ENV_FILE_NAME}.sample ${INIT_FILE_DIR}/../envs/${ENV_FILE_NAME}
            echo "created envs/${ENV_FILE_NAME}"
        fi
    done
}

make_directory
copy_envs
