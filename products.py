# Get a list of Uber products available in San Francisco

import requests

# read server token
f = open('./uber.conf', 'r')
token = f.readlines()[1].split(' ')[2]
# print (token)

url = 'https://api.uber.com/v1.2/products'

params = {'latitude': 32.23176,
          'longitude': -110.95664}

headers = {'Content-Type': 'application/json',
           'Accept-Language': 'en_US',
           'Authorization': 'Token {}'.format(token)}

r = requests.get(url, headers=headers, params=params)
if r.ok:
    print (r.text)
else:
    print (r.status_code)