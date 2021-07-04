@ECHO OFF
java -Xms1024M -Xmx3072M -jar -XX:+UseG1GC server.jar --nogui
pause