#!/bin/bash
### rebuild static website page

rm -rf ./public
hugo --config ./config/_default/hugo.yaml 