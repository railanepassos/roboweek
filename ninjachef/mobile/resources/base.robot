***Settings***
Documentation       Codigo base para abrir uma sessão Appium Server

Library             AppiumLibrary

***Keywords***
Open Session
  Open Application      http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}\\app\\ninjachef.apk
    ...                 udid=0053009945
    ...                 adbExecTimeout=50000

Close Session
    Close Application