#!/bin/bash
function fetch {
    echo `curl --request GET -H Content-Type:application/json https://weatherdbi.herokuapp.com/data/weather/$1 -s` | jq '{ City: .region, Temperature: .currentConditions.temp.c, }'
  }
fetch $1