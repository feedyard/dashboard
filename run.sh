#!/bin/bash


if [[ ! -z "$PORT" ]]; then
  PORT_ARG="-p $PORT"
fi

# Start smashing
smashing start $PORT_ARG
