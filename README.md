# temperature
體溫回報

# From: https://adamtheautomator.com/selenium-powershell/#Prerequisites

使用方式：
Prequest: Windows 7.0 above, 預設工作目錄為 d:\git\temperature

1. 修改 report-temperature_v2.0.ps1 中的 工號、體溫
2. copy WebDriver.dll & chromedriver.exe 至 工作目錄
3. 將 report-temperature.ps1 設定進入到 Windows 工作排程中 完整指令 powershell -ExecutionPolicy Bypass -File "D:\Git\temperature\report-temperature_v2.0.ps1"

