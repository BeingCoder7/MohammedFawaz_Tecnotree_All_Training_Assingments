#Weather API
API_KEY = 'e07d16d4e233e9ac8fc269cf1b56ccf3'
CITY = input("Enter name of City:")
import requests, json

BASE_URL = "https://api.openweathermap.org/data/2.5/weather?"

URL = BASE_URL + "q=" + CITY + "&appid=" + API_KEY

response = requests.get(URL)

if response.status_code == 200:
  
   data = response.json()
   
   main = data['main']

   sys = data['sys']
  
   temperature = main['temp']

   humidity = main['humidity']

   pressure = main['pressure']

   country = sys['country']

   report = data['weather']
   print(f"{CITY:-^30}")
   print(f"Temperature: {temperature}")
   print(f"Humidity: {humidity}")
   print(f"Pressure: {pressure}")
   print(f"Country:{country}")
   print(f"Weather Report: {report[0]['description']}")
else:
 
   print("Error in the HTTP request")