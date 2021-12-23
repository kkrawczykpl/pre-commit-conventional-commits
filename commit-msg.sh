#!/usr/bin/env bash

MSG="$1"

if ! grep -qE '^chore|^feat|^fix|^docs|^ci|^style|^refactor|^test' "$MSG";then
    cat "$MSG"
    echo "Your commit message does NOT follow Conventional Commits (the Angular convention)!"
    echo "Your commit message MUST start with one of the types: chore | feat | fix | docs | ci | style | refactor | test"
    echo "See https://www.conventionalcommits.org/en/v1.0.0/ or either Intips WIKI or DOCUMENTATION for more"
    exit 1
fi
