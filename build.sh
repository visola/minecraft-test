#!/bin/bash

rm -Rf dist/
mkdir dist/

OUTPUT_DIR=$(pwd)/dist
echo "Output dir is $OUTPUT_DIR"

(cd src/behavior_pack && zip -r $OUTPUT_DIR/behavior_pack.mcpack ./*)
(cd src/resource_pack && zip -r $OUTPUT_DIR/resource_pack.mcpack ./*)
(cd $OUTPUT_DIR && zip my_pack.mcproject behavior_pack.mcpack resource_pack.mcpack)

cp src/index.html dist/
