***Settings***
Documentation       Codigo base para abrir uma sessão Appium Server

Library             AppiumLibrary

{
  "automationName": "UiAutomator2",
  "platformName": "Android",
  "deviceName": "Emulator",
  "App": "C:\\Projetos\\roboweek\\ninjachef\\mobile\\app\\ninjachef.apk",
  "udid": "emulator-5554",
  "adbExecTimeout": "120000"
}

***Keywords***
Open Session
    Open Aplication     http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/ninjachef.apk
    ...                 udid=emulator-5554
    ...                 adbExecTimeout=50000

Close Session
    Close Aplication