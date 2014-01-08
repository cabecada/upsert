#!/bin/bash
#
# Client count, scale, and duration are not configurable because they're
# generally thought to be essential to the nature of the thing being tested.

./insert.sh			3
if [[ $? != 0 ]]; then
	exit 1
fi

./update.sh			3
if [[ $? != 0 ]]; then
	exit 1
fi

./simple.sh			3
if [[ $? != 0 ]]; then
	exit 1
fi
./two.sh			3
if [[ $? != 0 ]]; then
	exit 1
fi
./smalltwo.sh		3
if [[ $? != 0 ]]; then
	exit 1
fi
./text.sh			3
if [[ $? != 0 ]]; then
	exit 1
fi
