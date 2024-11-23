#!/bin/bash
### start a hugo server to check the website content
### note that this server is only used in development, not deployment

PORT=9999
eval hugo server --config ./config/_default/hugo.yaml --buildDrafts --bind 0.0.0.0 --port "${PORT}"
