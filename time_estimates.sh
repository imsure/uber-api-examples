#!/bin/bash

token=$(awk '/^token/{print $3}' uber.conf)

# Get time estimates for all Uber products currently available in San Francisco
curl -H "Authorization: Token ${token}" \
     -H "Content-Type: application/json" \
     -H "Accept-Language: en_US" \
     'https://api.uber.com/v1.2/estimates/time?start_latitude=37.7752315&start_longitude=-122.418075' \
    | jq '.'

# Get time estimates for all Uber products currently available in Tucson (E University Blvd & N Park Ave)
curl -H "Authorization: Token ${token}" \
     -H "Content-Type: application/json" \
     -H "Accept-Language: en_US" \
     'https://api.uber.com/v1.2/estimates/time?start_latitude=32.23176&start_longitude=-110.95664' \
    | jq '.'

# Get time estimates for Uber product "The low-cost Uber" (available) in Tucson (E University Blvd & N Park Ave)
curl -H "Authorization: Token ${token}" \
     -H "Content-Type: application/json" \
     -H "Accept-Language: en_US" \
     'https://api.uber.com/v1.2/estimates/time?product_id=85bbf2e4-fdf0-476d-beb4-b69022994ed3&start_latitude=32.23176&start_longitude=-110.95664' \
    | jq '.'

# Get time estimates for Uber product "Share the ride, split the cost." (currently not available) in Tucson (E University Blvd & N Park Ave)
curl -H "Authorization: Token ${token}" \
     -H "Content-Type: application/json" \
     -H "Accept-Language: en_US" \
     'https://api.uber.com/v1.2/estimates/time?product_id=26546650-e557-4a7b-86e7-6a3942445247&start_latitude=32.23176&start_longitude=-110.95664' \
    | jq '.'
