#!/bin/bash
function fetch {
    echo `curl --request GET -H Content-Type:application/json https://weatherdbi.herokuapp.com/data/weather/$1`
  }
fetch $1 | python -m json.tool