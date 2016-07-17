#!/bin/sh

name='Tanabe'

local_function()
{
    local name='Miyake'
    echo "I am $name"
}

local_function

echo "$name"
