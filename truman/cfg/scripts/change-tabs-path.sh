#!/usr/bin/env bash

base_path=$(cd $(dirname $BASH_SOURCE) && pwd)

fonts_path=$(cd ${base_path}/.. && pwd)/fonts

for file in `find ${base_path}/../../target/docs -name "*.html"`;
do
  echo $file
  gsed -i 's/src="asciidoctor-tabs.js"/src="assets\/scripts\/asciidoctor-tabs.js"/g' "${file}"
done
