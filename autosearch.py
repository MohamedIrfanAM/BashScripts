import requests
import webbrowser
import sys
import pyautogui
import time

number = int(sys.argv[1])
parameters = {"amount": number, "type": "multiple"}

def browse():
    response = requests.get(url="https://opentdb.com/api.php", params=parameters)
    questions_data = response.json()["results"]
    for question_data in questions_data:
        question = question_data["question"]
        print(question)
        search_url = f"https://www.bing.com/search?q={question}"
        webbrowser.open(search_url)

for i in range(8):
    browse()
    time.sleep(10)
    pyautogui.hotkey("ctrl", "shift", "m")
    time.sleep(0.5)
    pyautogui.hotkey("shift", "tab")
    time.sleep(0.5)
    if i == 0:
        pyautogui.hotkey("shift", "tab")
    for j in range(i):
        pyautogui.hotkey("shift", "tab")
        time.sleep(0.75)
    pyautogui.hotkey("enter")
    time.sleep(0.5)
    pyautogui.hotkey("alt", "tab")
    time.sleep(0.5)
    pyautogui.hotkey("alt", "f4")
    time.sleep(0.5)
pyautogui.hotkey("alt", "f4")
