SET HUBHOST=localhost
SET NODEHOST=localhost
IF NOT [%1] == [] SET HUBHOST=%1
IF NOT [%1] == [] SET NODEHOST=%1
Start java -Dwebdriver.chrome.driver=chromedriver.exe -Dwebdriver.gecko.driver=geckodriver.exe -Dwebdriver.ie.driver=IEDriverServer32.exe -jar selenium-server-standalone-3.14.0.jar -role node -hub http://%HUBHOST%:4444/grid/register -browser "browserName="chrome",version=72,maxInstances=9,platform=WINDOWS" -browser "browserName=firefox,version=65,maxInstances=3,platform=WINDOWS" -browser "browserName=internet explorer,version=11,maxInstances=3,platform=WINDOWS"
Exit
