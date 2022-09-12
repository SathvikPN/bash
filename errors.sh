#!/bin/bash
x="a b"

[$x ] # error: touching brackets
[ $x] # error: touching brackets
[ $x ] # error: if conditional --> boolean --> single value check. Here: [ a b ]
[ "$x" ] # OK
