#!/bin/sh

# the file where the commit message is written
filepath="$1"
tmp_file=$(mktemp /tmp/emoji-commitzen.XXXX)

replacements=(
    's/^new/📦 new:/'
    's/^add/📦 add:/'
    's/^feat/✨ feat:/'
    's/^fix/🐛 fix:/'
    's/^doc/📚 doc:/'
    's/^style/🎨 style:/'
    's/^refacto/🔨 refacto:/'
    's/^perf/🚀 perf:/'
    's/^chore/🔧 chore:/'
    's/^lint/💄 lint:/'
    's/^test/🤖 test:/'
    's/^release/🚀 release:/'
    's/^first/🐣 first:/'
)

# join replacements by ; to have sed perform multiple replace
sed_command=$(printf "%s;" "${replacements[@]}")

# perform replacements in temp file
cat $filepath | sed "$sed_command" > $tmp_file

# replace commit file
mv $tmp_file $filepath
