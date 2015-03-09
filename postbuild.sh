#!/usr/bin/env bash

find _build/plugin -type f -name \*.cmxs | parallel ln -sf {} {/.}.plugin
