*** Settings ***
Library   AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723/wd/hub
${AUTOMATION_NAME}    Uiautomator2
${PLATFORM_VERSION}    12
${PLATFORM_NAME}    Android
${DEVICE_NAME}    Drashti Chetta
${PACKAGE_NAME}    com.example.onlinevotingsystem
${ACTIVITY_NAME}    .SplashActivity

${Voter_Page}       //android.widget.Button[@resource-id="com.example.onlinevotingsystem:id/voterbtn"]
${Result_Page}      //android.widget.Button[@resource-id="com.example.onlinevotingsystem:id/resultbtn"]
${Admin_Page}       //android.widget.Button[@resource-id="com.example.onlinevotingsystem:id/adminbtn"]

*** Keywords ***
*** Test Cases ***

Open Test Application
    Open Application    ${APPIUM_SERVER}
    ...    automationName=${AUTOMATION_NAME}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${PACKAGE_NAME}
    ...    appActivity=${ACTIVITY_NAME}
    ...    noReset=true
    ...    allowInsecure=true


Go to Voter_Page
    Wait Until Element Is Visible    ${Admin_Page}
    Click Element    ${Admin_Page}

