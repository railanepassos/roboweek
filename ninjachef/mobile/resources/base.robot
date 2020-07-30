***Settings***
Documentation       Codigo base para abrir uma sessão Appium Server

Library             AppiumLibrary

Resource            kws.robot

***Keywords***
Open Session
  Open Application      http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/ninjachef.apk
    ...                 udid=emulator-5554
    ...                 adbExecTimeout=50000

Close Session
    Capture Page Screenshot
    Close Application