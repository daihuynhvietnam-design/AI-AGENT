@echo off
cd /d "%~dp0"
echo ========================================
echo          SREC AGENT
echo ========================================
where py >nul 2>nul
if %errorlevel%==0 (set PY=py) else (set PY=python)

if not exist config.json (
  echo.
  echo [!] Chua co file config.json
  echo     Dang tao tu config.example.json ...
  copy config.example.json config.json >nul
  echo.
  echo     Hay mo file config.json, dan API key vao, roi chay lai.
  echo.
  notepad config.json
  pause
  exit /b 1
)

%PY% -m pip install -r requirements.txt
if errorlevel 1 (
  echo Khong cai duoc thu vien. Hay cai Python 3.10+ va thu lai.
  pause
  exit /b 1
)
start "" http://127.0.0.1:5000
%PY% app.py
pause
