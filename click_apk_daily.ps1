# From: https://adamtheautomator.com/selenium-powershell/#Prerequisites

$workingPath = 'D:\git\temperature\'

# Add the working directory to the environment path.
# This is required for the ChromeDriver to work.
if (($env:Path -split ';') -notcontains $workingPath) {
    $env:Path += ";$workingPath"
}

# Check the Path environment variable
#$env:Path -split ';'

Clear-Host
try {


    # OPTION 1: Import Selenium to PowerShell using the Add-Type cmdlet.
    Add-Type -Path "$($workingPath)\WebDriver.dll"

    # OPTION 2: Import Selenium to PowerShell using the Import-Module cmdlet.
    #Import-Module "$($workingPath)\WebDriver.dll"

    # OPTION 3: Import Selenium to PowerShell using the .NET assembly class.
    #[System.Reflection.Assembly]::LoadFrom("$($workingPath)\WebDriver.dll")

    # Create a new ChromeDriver Object instance.
    $ChromeDriver = New-Object OpenQA.Selenium.Chrome.ChromeDriver

    # Launch a browser and go to URL
    $ChromeDriver.Navigate().GoToURL('https://apk.tw/forum-1510-1.html')

    #$ChromeDriver.FindElementByName('username').Submit('tpwange')
    #$ChromeDriver.FindElementByName('username').SendKeys('tpwange')
    #$ChromeDriver.FindElementByXPath('//*[@id="password3_LM96M"]').SendKeys('gd9661')

    #$ChromeDriver.FindElementByXPath('//*[@id="loginform_LM96M"]/div/div[6]/table/tbody/tr/td[1]/button/strong').Click()

    # 簽到
    #$ChromeDriver.FindElementByXPath('//*[@id="my_amupper"]/img').Click()

    # Click on the 下一頁 button
    
    $ChromeDriver.FindElementByXPath('//*[@id="loginform_LjAoK"]/div/div[6]/table/tbody/tr/td[1]/button/strong').Click()

    $dateString = Get-Date -Format "yyyy/MM/dd HH:mm:ss -"  
    $dateString + "Successfully submitted temperature." | Out-File -Append -FilePath $workingPath'_daily_APK_log.json'
}
catch {
    Write-Host "An error occurred: see log"
    $dateString = Get-Date -Format "yyyy/MM/dd HH:mm:ss - " 
    $dateString + $_ | Out-File -Append -FilePath $workingPath'_daily_APK_log.json'
    #$dateString = Get-Date -Format "yyyyMMdd HH:mm"
    #$dateString = "D:\Temperature\log_" + $dateString + ".json"
    #ConvertTo-Json $Error | Out-File -FilePath D:\Temperature\log.json
}    

# Cleanup
#$ChromeDriver.Close()
#$ChromeDriver.Quit()


#| out-file -FilePath d:\result.html -Force; #same as the file saved from the webpage to html file in IE