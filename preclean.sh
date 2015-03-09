#!/usr/bin/env bash

find . -maxdepth 1 -type l -name \*.plugin -exec rm -- {} \;
