*** Settings ***
Library     Selenium2Library

*** Test Cases ***
Simple Test Case
	open browser    http://qa.lightcloud.com    chrome
	wait until page contains    Sign In
	input text    xpath=/html/body/div/section[1]/div/div[2]/form[1]/fieldset/input[1]    britton.sparks@rabweb.com
	input text    xpath=/html/body/div/section[1]/div/div[2]/form[1]/fieldset/input[2]    Surprise1
	click button    xpath=//*[@id="login"]
	wait until page contains    ENERGY USAGE
	sleep    3
	close browser