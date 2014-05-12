#!/bin/sh

kill `ps -A | grep [c]rawl | cut -f1 -d" "`

