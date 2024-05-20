#!/bin/bash

rm -Rf dist/
mkdir dist/

zip -rj dist/behavior_pack.mcpack src/behavior_pack/*
zip -rj dist/resource_pack.mcpack src/resource_pack/*

cp src/index.html dist/
