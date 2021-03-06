#!/bin/sh
set -eu
echo To show more output, or all output use the \`--command-output-command or --c\`
echo and \`--command-output-command-args or --cc-args\` arguments.
echo You can use \`cat\` to show all output or \`tail -n10\` to show the last 10 lines.
echo
echo By default, only the last line of output is shown.
echo
echo BEGIN_CODE
set -x 
parallelly -a onlylastline 'printf "a\nb\nc\nd\ne"'
echo
parallelly --cc-args -n3 -a last3lines 'printf "a\nb\nc\nd\ne"'
echo
parallelly --cc cat -a last3lines 'printf "a\nb\nc\nd\ne"'
