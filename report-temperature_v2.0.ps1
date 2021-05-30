# From: https://adamtheautomator.com/selenium-powershell/#Prerequisites

$workingPath = 'D:\temperature'

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
    #$ChromeDriver.Navigate().GoToURL('https://zh.surveymonke')

    # 同意 Agree  
    $ChromeDriver.FindElementByXPath('//*[@id="660768081_4340945613_label"]/span[2]').Click()

    # 1. 工號 Employee ID (ex. 016668)    
    $ChromeDriver.FindElementByXPath('//*[@id="660768078"]').SendKeys('')

    # 2. 請選擇體溫測量方式 
    $ChromeDriver.FindElementByXPath('//*[@id="660768083_4340945616_label"]/span[2]').Click()

    # 3. 體溫 
    $ChromeDriver.FindElementByXPath('//*[@id="660768079"]').SendKeys('36.3')

    # 4. 是否有以下任一狀況, 若有請立即更新健康聲明書 
    $ChromeDriver.FindElementByXPath('//*[@id="660768088_4340945640_label"]/span[2]').Click()

    # 5. 近14日內，是否收到中央流行疫情指揮中心發送的疫情警示簡訊(俗稱：細胞簡訊)通知 
    $ChromeDriver.FindElementByXPath('//*[@id="660768089_4340945642_label"]/span[2]').Click()

    # 6. 近14日內，您或您的密切接觸者曾接受公費/自費PCR核酸採檢，或COVID-19快篩為陽性(依據最新一次檢測結果填答)? 
    $ChromeDriver.FindElementByXPath('//*[@id="660768090_4340945644_label"]/span[2]').Click()

    # 7. 近14日內，是否曾經停留於雙北地區室內場所超過2小時以上者，其原因如何? 
    $ChromeDriver.FindElementByXPath('//*[@id="660769069_4340992401_label"]/span[2]').Click()

    # * 本人已詳細閱讀上述調查表所列事項，並保證填寫內容正確屬實。  
    $ChromeDriver.FindElementByXPath('//*[@id="660768080_4340945605_label"]/span[2]').Click()

    Start-Sleep -Seconds 8

    # Click on the 下一頁 button
    $ChromeDriver.FindElementByXPath('//*[@id="patas"]/main/article/section/form/div[2]/button').Click()


}
catch {
    Write-Host "An error occurred: see log"
    $dateString = Get-Date -Format "yyyy/MM/dd HH:mm:ss - " 
    $dateString + $_ | Out-File -Append -FilePath D:\Temperature\log.json
    #$dateString = Get-Date -Format "yyyyMMdd HH:mm"
    #$dateString = "D:\Temperature\log_" + $dateString + ".json"
    #ConvertTo-Json $Error | Out-File -FilePath D:\Temperature\log.json
}    

# Cleanup
$ChromeDriver.Close()
$ChromeDriver.Quit()


#| out-file -FilePath d:\result.html -Force; #same as the file saved from the webpage to html file in IE