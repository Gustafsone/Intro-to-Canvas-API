import requests

# Replace 'YOUR_API_KEY' with your actual API key
api_key = 'YOUR_API_KEY'

# API endpoint URL
api_url = 'https://api.example.com/some_endpoint'

# Headers with authentication information
headers = {
    'Authorization': f'Bearer {api_key}',
    'Content-Type': 'application/json',
}

# Data to be sent in the request body (modify as needed)
payload = {
    'key1': 'value1',
    'key2': 'value2',
}

# Make a POST request with data in the request body
response = requests.post(api_url, headers=headers, json=payload)

print('Response:', response.json())  # Assuming the response is in JSON format
