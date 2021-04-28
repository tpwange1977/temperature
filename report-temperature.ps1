Clear-Host

$uri = 'https://zh.surveymonkey.com/r/EmployeeHealthCheck'
$null = Invoke-WebRequest -UseBasicParsing -Uri $uri -Method Get -SessionVariable webSession

Write-Host $webSession.Cookies.GetCookies($uri)

$response = Invoke-WebRequest -UseBasicParsing -Uri $uri -WebSession $webSession `
-Method "POST" `
-Headers @{
"method"="POST"
  "authority"="zh.surveymonkey.com"
  "scheme"="https"
  "path"="/r/EmployeeHealthCheck?fbclid=IwAR2mFRg--vDyG4VOm0TwnBrRU74UOBSjnjDH4pA-_dSTe2BLysCOqheQJ5k"
  "cache-control"="max-age=0"
  "sec-ch-ua"="`" Not A;Brand`";v=`"99`", `"Chromium`";v=`"90`", `"Google Chrome`";v=`"90`""
  "sec-ch-ua-mobile"="?0"
  "upgrade-insecure-requests"="1"
  "origin"="https://zh.surveymonkey.com"
  "user-agent"="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36"
  "accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
  "sec-fetch-site"="same-origin"
  "sec-fetch-mode"="navigate"
  "sec-fetch-user"="?1"
  "sec-fetch-dest"="document"
  "referer"="https://zh.surveymonkey.com/r/EmployeeHealthCheck?fbclid=IwAR2mFRg--vDyG4VOm0TwnBrRU74UOBSjnjDH4pA-_dSTe2BLysCOqheQJ5k"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7"
  "cookie"="ep202=eZ2Wq4vS1cB2s3RkR2YoSD7IGHA=; ep203=JIM0jr75zvqApxFCGWNdN39uyBM=; attr_multitouch=6u6P1/oniiQSKfXdawnMnFwMdHk=; cdp_seg=8J7UVEIXsEsSFLALLfwupSQlgcQ=; hubspotutk=d46d6d5129d49f163d372ce0e363a092; __hssrc=1; ep201=gDl3IZRhqeFSk+JiSr7y77ZEBIY=; __hstc=187900919.d46d6d5129d49f163d372ce0e363a092.1619475148746.1619561437370.1619619532761.3; _ga=GA1.2.596465359.1619619933; _gid=GA1.2.386674316.1619619933; __hssc=187900919.4.1619619532761"
} `
-ContentType "multipart/form-data; boundary=----WebKitFormBoundaryHrREsngfIyjraBAr" `
-Body ([System.Text.Encoding]::UTF8.GetBytes("------WebKitFormBoundaryHrREsngfIyjraBAr$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014833`"$([char]13)$([char]10)$([char]13)$([char]10)3209788694$([char]13)$([char]10)------WebKitFormBoundaryHrREsngfIyjraBAr$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014830`"$([char]13)$([char]10)$([char]13)$([char]10)039796$([char]13)$([char]10)------WebKitFormBoundaryHrREsngfIyjraBAr$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014835`"$([char]13)$([char]10)$([char]13)$([char]10)3209788699$([char]13)$([char]10)------WebKitFormBoundaryHrREsngfIyjraBAr$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014831`"$([char]13)$([char]10)$([char]13)$([char]10)36.3$([char]13)$([char]10)------WebKitFormBoundaryHrREsngfIyjraBAr$([char]13)$([char]10)Content-Disposition: form-data; name=`"486015076`"$([char]13)$([char]10)$([char]13)$([char]10)3209796414$([char]13)$([char]10)------WebKitFormBoundaryHrREsngfIyjraBAr$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014832`"$([char]13)$([char]10)$([char]13)$([char]10)3209788684$([char]13)$([char]10)------WebKitFormBoundaryHrREsngfIyjraBAr$([char]13)$([char]10)Content-Disposition: form-data; name=`"survey_data`"$([char]13)$([char]10)$([char]13)$([char]10)4FoTYerhlqpl9PSGmuD5IZL9csguLuhIbBfyC6Gp6phaCznVhSfTom5D6CQ7DLwinfKliWtEOZbwt8isFvRW79FVqnXCkCvUtE5DQKTmPyqdZppOUCETp0MTtWlSjxwX6MX5CbjNISmFeLBCwEmg9wNWemRB7LQz2lyrhiTE_2BtWTmhqcFtE5v3beJxCgpC893M_2BKSsbJ45ndhgugZpV7fwHbNVFHSW6FuaXPL376gbXoHsC1oVZDv_2FQN8hd6_2FubwKi4czAP0ifDXZz3G8DNq4GHys59gazm_2FkfWlIs8NHktJ3ET_2BJNhh4vGefxrQ7VtM2T3Rur9_2BMmETXCREape0cKh_2FKQz7tV7rc7F2QgJhiYy0a8orVx_2FYcInSjx3bdUsOm69KoQOz_2FfL2te_2BEv0x5bvkA74JZzHeEV_2B_2FPYsfT9zcOKERMpoYUrAm3ZuKXGSv_2FCQvkN_2BkLLYRLVjg_2BhmNG3W6U7bzcC3UpugKwMY7u_2F4M11_2BSU0uC959eZGolGlExMNKY5Jc31L8egpQVeiu_2FEShurEdBt2Q2ifLHXYiKlMG9yGiKWVbw708JDRsZRYnbd$([char]13)$([char]10)------WebKitFormBoundaryHrREsngfIyjraBAr$([char]13)$([char]10)Content-Disposition: form-data; name=`"response_quality_data`"$([char]13)$([char]10)$([char]13)$([char]10){`"question_info`":{`"qid_486014834`":{`"number`":-1,`"type`":`"presentation_text`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":false},`"qid_486014833`":{`"number`":1,`"type`":`"single_choice_vertical`",`"option_count`":1,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[0,0]],`"dimensions`":[1,1],`"input_method`":null,`"is_hybrid`":false},`"qid_486014830`":{`"number`":2,`"type`":`"open_ended`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":true},`"qid_486014835`":{`"number`":3,`"type`":`"single_choice_vertical`",`"option_count`":3,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[1,0]],`"dimensions`":[3,1],`"input_method`":null,`"is_hybrid`":false},`"qid_486014831`":{`"number`":4,`"type`":`"open_ended`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":true},`"qid_486014836`":{`"number`":-1,`"type`":`"presentation_text`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":false},`"qid_486015076`":{`"number`":5,`"type`":`"single_choice_vertical`",`"option_count`":2,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[1,0]],`"dimensions`":[2,1],`"input_method`":null,`"is_hybrid`":false},`"qid_486014832`":{`"number`":6,`"type`":`"single_choice_vertical`",`"option_count`":1,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[0,0]],`"dimensions`":[1,1],`"input_method`":null,`"is_hybrid`":false}},`"tooltip_open_count`":0,`"opened_tooltip`":false,`"start_time`":1619619933239,`"end_time`":1619619963362,`"time_spent`":30123,`"previous_clicked`":false,`"has_backtracked`":false,`"bi_voice`":{}}$([char]13)$([char]10)------WebKitFormBoundaryHrREsngfIyjraBAr$([char]13)$([char]10)Content-Disposition: form-data; name=`"is_previous`"$([char]13)$([char]10)$([char]13)$([char]10)false$([char]13)$([char]10)------WebKitFormBoundaryHrREsngfIyjraBAr$([char]13)$([char]10)Content-Disposition: form-data; name=`"disable_survey_buttons_on_submit`"$([char]13)$([char]10)$([char]13)$([char]10)$([char]13)$([char]10)------WebKitFormBoundaryHrREsngfIyjraBAr--$([char]13)$([char]10)"))


$response.Content | out-file -FilePath d:\result.html -Force; #same as the file saved from the webpage to html file in IE
Write-Output $response.Content


#if ($response.Context.IndexOf("Employee Self-check Body Temperature has Completed!") -gt 0) {
#  Write-Host -BackgroundColor Green "Employee Self-check Body Temperature has Completed!!"
#} else {
#  Write-Host -BackgroundColor Red "Report Failed!"
#}


#>