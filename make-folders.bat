@echo off
chcp 949 >nul
cd /d "%~dp0"
echo.
echo   영수증 폴더 만들기
echo   - 이미 있는 폴더는 건너뜁니다. 여러 번 눌러도 안전합니다.
echo   - 폴더를 지우지 않습니다.
echo.
set "CNT="
set /p CNT=  몇 번까지 만들까요? [그냥 엔터 = 20] : 
if "%CNT%"=="" set "CNT=20"
if not exist "영수증" mkdir "영수증"
for /l %%i in (1,1,%CNT%) do (
  if not exist "영수증\R%%i" (
    mkdir "영수증\R%%i"
    echo   만듦  R%%i
  )
)
echo.
echo   끝났습니다. 아무 키나 누르면 닫힙니다.
pause >nul
