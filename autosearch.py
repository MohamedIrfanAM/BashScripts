import requests
import webbrowser
import sys
import pyautogui
import time

number = sys.argv[1]
parameters = {
    "amount": number,
    "type": "multiple"
}

response = requests.get(url="https://opentdb.com/api.php", params=parameters)
questions_data = response.json()["results"]
for question_data in questions_data:
  question = question_data["question"]
  print(question)
  search_url = f"https://www.bing.com/search?q={question}"
  webbrowser.open(search_url)

time.sleep(10)
for i in range(int(number)):
  pyautogui.hotkey('ctrl', 'w')
  time.sleep(0.1)
