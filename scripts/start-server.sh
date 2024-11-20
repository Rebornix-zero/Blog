#!/bin/bash

bash ./scripts/rebuild.sh

# config variables
WITH_DRAFT=0
PORT=9999

ARGS=`getopt -o '' --long with-draft -n "$0" -- "$@"`
if [ $? != 0 ]; then
    echo "getopt unexpected error!"
    exit 1
fi
# echo [${ARGS}]

# distribute ARGS to $1,$2,...
eval set -- "${ARGS}"

while true
do
    case "$1" in
        --with-draft)
            WITH_DRAFT=1
            shift 
            ;;
        --)
            shift
            break
            ;;
    esac
done

# build hugo command args
hugo_args=""
if [ $WITH_DRAFT -eq 1 ]; then
    hugo_args="${hugo_args} --buildDrafts"
fi

eval hugo server --config ./config/_default/hugo.toml --disableFastRender --bind 0.0.0.0 "${hugo_args}" --port "${PORT}"
