
[![Packages](https://img.shields.io/badge/packages-latest-blue.svg)](https://azure.github.io/azure-sdk/releases/latest/python.html) [![Dependencies](https://img.shields.io/badge/dependency-report-blue.svg)](https://azuresdkartifacts.blob.core.windows.net/azure-sdk-for-python/dependencies/dependencies.html) [![DepGraph](https://img.shields.io/badge/dependency-graph-blue.svg)](https://azuresdkartifacts.blob.core.windows.net/azure-sdk-for-python/dependencies/InterdependencyGraph.html) [![Python](https://img.shields.io/pypi/pyversions/azure-core.svg?maxAge=2592000)](https://pypi.python.org/pypi/azure/) [![Build Status](https://dev.azure.com/azure-sdk/public/_apis/build/status/python/python%20-%20core%20-%20ci?branchName=main)](https://dev.azure.com/azure-sdk/public/_build/latest?definitionId=458&branchName=main)

This repository is for active development of the Azure SDK for Python. For consumers of the SDK we recommend visiting our [public developer docs](https://docs.microsoft.com/python/azure/) or our versioned [developer docs](https://azure.github.io/azure-sdk-for-python).


# temperature
體溫回報

# From: https://adamtheautomator.com/selenium-powershell/#Prerequisites

使用方式：
Prequest: Windows 7.0 above, 預設工作目錄為 d:\git\temperature

1. 修改 report-temperature_v2.0.ps1 中的 工號、體溫
2. copy WebDriver.dll & chromedriver.exe 至 工作目錄
3. 將 report-temperature.ps1 設定進入到 Windows 工作排程中 完整指令 powershell -ExecutionPolicy Bypass -File "D:\Git\temperature\report-temperature_v2.0.ps1"

