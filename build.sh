#!/bin/bash

rm -Rf dist/
mkdir dist/

zip -r behavior_pack.mcpack src/behavior_pack
zip -r resource_pack.mcpack src/resource_pack

cp src/index.html dist/
cp *.mcpack dist/
