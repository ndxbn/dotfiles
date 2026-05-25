#!/usr/bin/env bash
set -eu

readonly original_file_name="php.ini-development"

# Download latest php.ini-development file
curl -L https://raw.githubusercontent.com/php/php-src/refs/heads/master/php.ini-development -o "${original_file_name}"
# remove comments
grep -v '^; .*' "${original_file_name}" | grep -v '^$' | grep -v '^;;;.*' | grep -v '^;$'  > php.default.ini

rm "${original_file_name}"

