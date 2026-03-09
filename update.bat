@echo off
cd "C:\Users\aiamd\Desktop\karat website\karatwebsite\dise-itos"

set timestamp=%date% %time%
git add .
git commit -m "Update: %timestamp%"
git push origin main

echo.
echo Done! Check your site in 1-2 minutes.
pause