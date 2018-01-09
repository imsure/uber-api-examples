#!/bin/bash

token=$(awk '/^token/{print $3}' uber.conf)
# echo $token
# exit

# Get a list of Uber products available in San Francisco
curl -H "Authorization: Token ${token}" \
     -H "Content-Type: application/json" \
     -H "Accept-Language: en_US" \
     'https://api.uber.com/v1.2/products?latitude=37.7752315&longitude=-122.418075' \
     | jq '.'

# Get a list of Uber products available in Tucson (E University Blvd & N Park Ave)
curl -H "Authorization: Token ${token}" \
     -H "Content-Type: application/json" \
     -H "Accept-Language: en_US" \
     'https://api.uber.com/v1.2/products?latitude=32.23176&longitude=-110.95664' \
    | jq '.'

curl -H "Authorization: Token ${token}" \
     -H "Content-Type: application/json" \
     -H "Accept-Language: en_US" \
     'https://api.uber.com/v1.2/products?latitude=32.23176&longitude=-110.95664' \
    | jq '.'
