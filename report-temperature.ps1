Clear-Host

$uri = 'https://zh.surveymonkey.com/r/EmployeeHealthCheck'
$null = Invoke-WebRequest -UseBasicParsing -Uri $uri -Method Get -SessionVariable WebSession -ErrorAction SilentlyContinue
#$WebSession | Get-AllCookiesFromWebRequestSession

write-host $WebSession.Cookies.GetCookies($uri)

$response = Invoke-WebRequest -UseBasicParsing -Uri $uri -WebSession $WebSession `
-Method "POST" `
-Headers @{
"method"="POST"
  "authority"="zh.surveymonkey.com"
  "scheme"="https"
  "path"="/r/EmployeeHealthCheck"
  "cache-control"="max-age=0"
  "sec-ch-ua"="`"Google Chrome`";v=`"89`", `"Chromium`";v=`"89`", `";Not A Brand`";v=`"99`""
  "sec-ch-ua-mobile"="?0"
  "upgrade-insecure-requests"="1"
  "origin"="https://zh.surveymonkey.com"
  "user-agent"="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36"
  "accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
  "sec-fetch-site"="same-origin"
  "sec-fetch-mode"="navigate"
  "sec-fetch-user"="?1"
  "sec-fetch-dest"="document"
  "referer"="https://zh.surveymonkey.com/r/EmployeeHealthCheck"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7"
} `
-ContentType "multipart/form-data; boundary=----WebKitFormBoundaryJrBYhcjPcteOx50y" `
-Body ([System.Text.Encoding]::UTF8.GetBytes("------WebKitFormBoundaryJrBYhcjPcteOx50y$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014833`"$([char]13)$([char]10)$([char]13)$([char]10)3209788694$([char]13)$([char]10)------WebKitFormBoundaryJrBYhcjPcteOx50y$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014830`"$([char]13)$([char]10)$([char]13)$([char]10)039796$([char]13)$([char]10)------WebKitFormBoundaryJrBYhcjPcteOx50y$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014835`"$([char]13)$([char]10)$([char]13)$([char]10)3209788699$([char]13)$([char]10)------WebKitFormBoundaryJrBYhcjPcteOx50y$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014831`"$([char]13)$([char]10)$([char]13)$([char]10)36.3$([char]13)$([char]10)------WebKitFormBoundaryJrBYhcjPcteOx50y$([char]13)$([char]10)Content-Disposition: form-data; name=`"486015076`"$([char]13)$([char]10)$([char]13)$([char]10)3209796414$([char]13)$([char]10)------WebKitFormBoundaryJrBYhcjPcteOx50y$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014832`"$([char]13)$([char]10)$([char]13)$([char]10)3209788684$([char]13)$([char]10)------WebKitFormBoundaryJrBYhcjPcteOx50y$([char]13)$([char]10)Content-Disposition: form-data; name=`"survey_data`"$([char]13)$([char]10)$([char]13)$([char]10)4FoTYerhlqpl9PSGmuD5IXUTH_2BFIAUS6AaPytqJ61cWf2gBTQI_2Bbo_2FlupjfJ0FbRQHKo_2F7aT3JbalO9mUq58ZxopHDI3ATMUAIJLWHSDdAAimlpxhXwamVJiKl0NSbxd4cjPK3nCzoDMPQCKGzDAurrK7oKK_2FSiYs5hhQs3r0iIf_2FS57vuAB5t8tbW7bII9rQPVbiNwVH6az3rH7TV3df_2FTnFCgSgEEBQ7VpHpcQ6yhTLMD93SKwIouXRvljODLjxr4DoZ0IROqMBFK9_2FPE8kgCFYTcRGVdt0_2BT5mjEkXaqocehk14JPQoKmivu2qnLYdCJcIlRhpAm8mPLhL_2B73wHkMI2TjG4IGIJyarbKGZXIXD8jKqzeWfrOnxrctXPzJuyOW_2FWnaYZF_2B5hiuEp2J44L9I_2BLm3pEF1h6VmVVPrrN0RoNsNjzZT4mNtgyoPf3Pcf1XElGI_2BmFgVKEV0pnAcMnxgtllhn79HSxrGK4vqbBo5YzuFCJfZadcoiVFXZErBNujlwZSi5fBiZLBIvA0fCCEuqK2XyVs2OzNlL_2BpSVZ0IQy_2FvE_2BATZznJhXzliwO$([char]13)$([char]10)------WebKitFormBoundaryJrBYhcjPcteOx50y$([char]13)$([char]10)Content-Disposition: form-data; name=`"response_quality_data`"$([char]13)$([char]10)$([char]13)$([char]10){`"question_info`":{`"qid_486014834`":{`"number`":-1,`"type`":`"presentation_text`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":false},`"qid_486014833`":{`"number`":1,`"type`":`"single_choice_vertical`",`"option_count`":1,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[0,0]],`"dimensions`":[1,1],`"input_method`":null,`"is_hybrid`":false},`"qid_486014830`":{`"number`":2,`"type`":`"open_ended`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":true},`"qid_486014835`":{`"number`":3,`"type`":`"single_choice_vertical`",`"option_count`":3,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[1,0]],`"dimensions`":[3,1],`"input_method`":null,`"is_hybrid`":false},`"qid_486014831`":{`"number`":4,`"type`":`"open_ended`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":true},`"qid_486014836`":{`"number`":-1,`"type`":`"presentation_text`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":false},`"qid_486015076`":{`"number`":5,`"type`":`"single_choice_vertical`",`"option_count`":2,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[1,0]],`"dimensions`":[2,1],`"input_method`":null,`"is_hybrid`":false},`"qid_486014832`":{`"number`":6,`"type`":`"single_choice_vertical`",`"option_count`":1,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[0,0]],`"dimensions`":[1,1],`"input_method`":null,`"is_hybrid`":false}},`"tooltip_open_count`":0,`"opened_tooltip`":false,`"start_time`":1619158657802,`"end_time`":1619159038559,`"time_spent`":380757,`"previous_clicked`":false,`"has_backtracked`":false,`"bi_voice`":{}}$([char]13)$([char]10)------WebKitFormBoundaryJrBYhcjPcteOx50y$([char]13)$([char]10)Content-Disposition: form-data; name=`"is_previous`"$([char]13)$([char]10)$([char]13)$([char]10)false$([char]13)$([char]10)------WebKitFormBoundaryJrBYhcjPcteOx50y$([char]13)$([char]10)Content-Disposition: form-data; name=`"disable_survey_buttons_on_submit`"$([char]13)$([char]10)$([char]13)$([char]10)$([char]13)$([char]10)------WebKitFormBoundaryJrBYhcjPcteOx50y--$([char]13)$([char]10)"))


$response.RawContent | out-file -FilePath d:\result.html -Force; #same as the file saved from the webpage to html file in IE
Write-Output $response.Content
