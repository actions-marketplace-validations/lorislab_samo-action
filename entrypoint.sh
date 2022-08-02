#!/bin/sh -l

stdout=$($*)
echo "::set-output name=stdout::$stdout"