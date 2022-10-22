#!/bin/sh

case $2 in
	'+') echo `expr $1 + $3`;;
	'-') echo `expr $1 - $3`;;
	*) echo "only + -"; exit 1;;
esac
