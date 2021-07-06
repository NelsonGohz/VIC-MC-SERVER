@ECHO OFF
java -Xmx4096M -Xms4096M -jar server.jar nogui
echo “Hello” >> test.txt
pause