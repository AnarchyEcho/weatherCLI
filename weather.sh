#!/bin/bash
function weather {
  echo `curl --request GET -H Content-Type:application/json https://weatherdbi.herokuapp.com/data/weather/$1 -s` | jq '{ City: .region, Temperature: .currentConditions.temp.c, Time: .currentConditions.dayhour }'
  }
function Help {
  echo "Incorrect syntax, do: weather <city>"
  echo "Available flags: -h, --help |"
}
case $1 in
  "" | -h | --help)
    Help
    exit;;
esac
weather $1