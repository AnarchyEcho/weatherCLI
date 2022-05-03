#!/bin/bash
function weather {
    echo `curl --request GET -H Content-Type:application/json https://weatherdbi.herokuapp.com/data/weather/$1 -s` | jq '{ City: .region, Temperature: .currentConditions.temp.c, Time: .currentConditions.dayhour }'
  }
weather $1