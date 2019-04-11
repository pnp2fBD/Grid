SET HUBHOST=localhost
SET NODEHOST=localhost
IF NOT [%1] == [] SET HUBHOST=%1
IF NOT [%1] == [] SET NODEHOST=%1
Start java -Dwebdriver.gecko.driver=geckodriver.exe -jar selenium-server-standalone-3.6.0.jar -role node -hub http://%HUBHOST%:4444/grid/register -hubHost %HUBHOST% -host %NODEHOST% -port 5556 -browser browserName="firefox"
Exit