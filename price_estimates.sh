#!/bin/bash

token=$(awk '/^token/{print $3}' uber.conf)

# Get price estimates from UofA campus to Metropia office for all products offered at the given location
curl -H "Authorization: Token ${token}" \
     -H "Content-Type: application/json" \
     -H "Accept-Language: en_US" \
     'https://api.uber.com/v1.2/estimates/price?start_latitude=32.23176&start_longitude=-110.95664&end_latitude=32.28675&end_longitude=-110.94546' \
    | jq '.'
