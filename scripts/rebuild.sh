#!/bin/bash
### rebuild static website page

rm -rf ./public/
hugo --buildDrafts --config ./config/_default/hugo.yaml 