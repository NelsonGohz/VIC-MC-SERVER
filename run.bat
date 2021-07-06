@ECHO OFF
git branch main-backup
git fetch --all
git reset --hard origin/main
java -Xmx4096M -Xms4096M -jar server.jar nogui
git add .
git commit -m "new ver"
git push
pause
