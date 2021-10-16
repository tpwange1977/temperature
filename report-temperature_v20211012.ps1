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

    $ChromeDriver.FindElementByXPath('//*[@id="715032623_4702730653_label"]').Click()
    
    #1
    $ChromeDriver.FindElementByXPath('//*[@id="715032620"]').SendKeys("039796");
    
    #2
    $ChromeDriver.FindElementByXPath('//*[@id="715032625_4702730656_label"]/span[2]').Click();

    #3
    $ChromeDriver.FindElementByXPath('//*[@id="715032621"]').SendKeys("36.5");
    $ChromeDriver.FindElementByXPath('//*[@id="question-field-715032636"]/fieldset/div/div[1]/div[1]/div/label').Click();
      
    #4
    $ChromeDriver.FindElementByXPath('//*[@id="715032630_4702730680_label"]').Click();
    $ChromeDriver.FindElementByXPath('//*[@id="715032637_4702730769_label"]/span[2]').Click();


    # 並保證填寫內容正確屬實
    $ChromeDriver.FindElementByXPath('//*[@id="715032622_4702730645_label"]').Click();

    Start-Sleep -Seconds 10

    # Click on the 下一頁 button
    $ChromeDriver.FindElementByXPath('//*[@id="patas"]/main/article/section/form/div[2]/button').Click()


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
#$ChromeDriver.Close()
$ChromeDriver.Quit()


#| out-file -FilePath d:\result.html -Force; #same as the file saved from the webpage to html file in IE