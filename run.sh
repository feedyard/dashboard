#!/bin/bash


if [[ ! -z "$PORT" ]]; then
  PORT_ARG="-p $PORT"
fi

# Start smashing
bundle exec smashing start $PORT_ARG
