# From: https://adamtheautomator.com/selenium-powershell/#Prerequisites

$workingPath = 'D:\temperature\'

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
    $ChromeDriver.Navigate().GoToURL('https://zh.surveymonkey.com/r/EmployeeHealthCheck')

    # 同意 Agree  
    $ChromeDriver.FindElementByXPath('//*[@id="670913045_4407790167_label"]/span[2]').Click()
    
    #1
    $ChromeDriver.FindElementByXPath('//*[@id="670913042"]').SendKeys("039796");
    
    #2
    $ChromeDriver.FindElementByXPath('//*[@id="670913047_4407790170_label"]/span[2]').Click();

    #3
    $ChromeDriver.FindElementByXPath('//*[@id="670913043"]').SendKeys("36.2");
      
    #4
    $ChromeDriver.FindElementByXPath('//*[@id="670913052_4407790194_label"]/span[2]').Click();

    #5
    $ChromeDriver.FindElementByXPath('//*[@id="670913053_4407790195_label"]/span[2]').Click();
    
    #6
    $ChromeDriver.FindElementByXPath('//*[@id="670913055_4407807462_label"]/span[2]').Click();
    
    #Page 2
    $ChromeDriver.FindElementByXPath('//*[@id="patas"]/main/article/section/form/div[2]/button').Click()

    #7
    $ChromeDriver.FindElementByXPath('//*[@id="670915461_4407824035_label"]/span[2]').Click();

    #8
    $ChromeDriver.FindElementByXPath('//*[@id="670913054_4407790198_label"]/span[2]').Click();

    #9
    $ChromeDriver.FindElementByXPath('//*[@id="670917501_4407848014_label"]/span[2]').Click();


    #$dateString = Get-Date -Format "yyyy/MM/dd"
    #$ChromeDriver.FindElementByXPath('//*[@id="664916315_other"]').SendKeys($dateString);

    # 並保證填寫內容正確屬實
    $ChromeDriver.FindElementByXPath('//*[@id="670913044_4407790159_label"]/span[2]').Click();

    Start-Sleep -Seconds 12

    # Click on the 下一頁 button
    $ChromeDriver.FindElementByXPath('//*[@id="patas"]/main/article/section/form/div[2]/button[2]').Click()

    $dateString = Get-Date -Format "yyyy/MM/dd HH:mm:ss -"  
    $dateString + "Successfully submitted temperature." | Out-File -Append -FilePath $workingPath'log.json'
    Write-Host $dateString"Successfully submitted temperature."
}
catch {
    Write-Error "An error occurred: see log"
    $dateString = Get-Date -Format "yyyy/MM/dd HH:mm:ss - " 
    $dateString + $_ | Out-File -Append -FilePath $workingPath'log.json'
    Write-Error $_
}    

# Cleanup
$ChromeDriver.Close()
$ChromeDriver.Quit()


#| out-file -FilePath d:\result.html -Force; #same as the file saved from the webpage to html file in IE