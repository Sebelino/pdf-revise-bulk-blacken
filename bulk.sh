#!/usr/bin/env bash

set -euo pipefail

set -x

replace_string="$1"
executable="/pdf-revise.jar"

rm -f *.out.pdf

ls *.pdf | xargs -I {} java -jar "$executable" {} blacken "$replace_string"
