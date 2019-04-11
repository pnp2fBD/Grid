SET HUBHOST=localhost
SET NODEHOST=localhost
IF NOT [%1] == [] SET HUBHOST=%1
IF NOT [%1] == [] SET NODEHOST=%1
Start java -Dwebdriver.ie.driver=IEDriverServer.exe -jar selenium-server-standalone-3.13.0.jar -role node -hub http://%HUBHOST%:4444/grid/register -browser browserName="internet explorer" -port 5556
Exit