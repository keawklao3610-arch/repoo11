@echo off
setlocal
cd /d "%~dp0"
echo =============================================
echo OR Safety Intelligence V2.3 - Netlify Deploy
 echo =============================================
echo This deploys a NEW SITE. Choose Create a new site when prompted.
echo Production only: website is LOCKED until Netlify and Google credentials configured.
echo.
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is missing. Install Node.js LTS from https://nodejs.org/en/download
  pause
  exit /b 1
)
call npm run test
if errorlevel 1 (echo Unit tests FAILED. Deployment stopped.&pause&exit /b 1)
call npm run build
if errorlevel 1 (echo Build FAILED. Deployment stopped.&pause&exit /b 1)
echo.
echo Browser login to Netlify may open next. Follow the prompts.
call npx --yes netlify-cli login
if errorlevel 1 (echo Netlify Login failed.&pause&exit /b 1)
echo.
echo IMPORTANT: Choose Create new site. Do not overwrite other Netlify sites.
call npx --yes netlify-cli deploy --build --prod
if errorlevel 1 (echo Deploy failed. See error above.&pause&exit /b 1)
echo.
echo Deploy command completed. Site will be locked until Google Cloud setup is verified.
echo Open START_DEPLOY_TH.html for next steps.
pause
