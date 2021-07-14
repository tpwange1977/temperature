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
    $ChromeDriver.FindElementByXPath('//*[@id="680221512_4471599931_label"]/span[2]').Click()
    
    #1
    $ChromeDriver.FindElementByXPath('//*[@id="680221509"]').SendKeys("039796");
    
    #2
    $ChromeDriver.FindElementByXPath('//*[@id="680221514_4471599934_label"]/span[2]').Click();

    #3
    $ChromeDriver.FindElementByXPath('//*[@id="680221510"]').SendKeys("36.4");
    $ChromeDriver.FindElementByXPath('//*[@id="question-field-680226629"]/fieldset/div/div[1]/div[1]/div/label/span[2]').Click();
      
    #4
    $ChromeDriver.FindElementByXPath('//*[@id="680221519_4471599958_label"]/span[2]').Click();

    #5
    $ChromeDriver.FindElementByXPath('//*[@id="680221520_4471599959_label"]/span[2]').Click();
    
    #6
    $ChromeDriver.FindElementByXPath('//*[@id="680221524_4471600012_label"]/span[2]').Click();

    #7
    #$ChromeDriver.FindElementByXPath('//*[@id="677104498_4450212787_label"]/span[2]').Click();
    
    #Page 2
    #$ChromeDriver.FindElementByXPath('//*[@id="patas"]/main/article/section/form/div[2]/button').Click()


    #8
    #$ChromeDriver.FindElementByXPath('//*[@id="670913054_4407790198_label"]/span[2]').Click();

    #9
    $ChromeDriver.FindElementByXPath('//*[@id="680221521_4471599962_label"]/span[2]').Click();

    #10
    $ChromeDriver.FindElementByXPath('//*[@id="680221523_4471600005_label"]/span[2]').Click();

    #$dateString = Get-Date -Format "yyyy/MM/dd"
    #$ChromeDriver.FindElementByXPath('//*[@id="664916315_other"]').SendKeys($dateString);

    # 並保證填寫內容正確屬實
    $ChromeDriver.FindElementByXPath('//*[@id="680221511_4471599923_label"]/span[2]').Click();

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