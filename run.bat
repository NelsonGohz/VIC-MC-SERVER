@ECHO OFF
git stash
git fetch --all
git reset --hard origin/main

java -Xmx4096M -Xms4096M -jar server.jar nogui

set /p Build=<ver.txt
set /a Build=%Build%+1
>ver.txt echo %Build%

git add .
git commit -m "session #%Build%"
git push
pause
