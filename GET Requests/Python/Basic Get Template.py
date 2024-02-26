import requests

# Replace 'YOUR_API_KEY' with your actual API key
api_key = 'YOUR_API_KEY'

# API endpoint URL
api_url = 'https://api.example.com/some_endpoint'

# Headers with authentication information
headers = {
    'Authorization': f'Bearer {api_key}',
    'Content-Type': 'application/json',  # Adjust content type as needed
}

# Make a GET request (you can change it to other HTTP methods like POST, PUT, etc.)
response = requests.get(api_url, headers=headers)

print('Response:', response.json())  # Assuming the response is in JSON format
