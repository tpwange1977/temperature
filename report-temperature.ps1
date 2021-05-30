Clear-Host

Start-Process chrome "https://zh.surveymonkey.com/r/EmployeeHealthCheck"

Start-Sleep -s 5

$WebKitFormBoundary = "----WebKitFormBoundaryjRmPjyXmKbKMRSqA"

$response = Invoke-WebRequest -UseBasicParsing -Uri "https://zh.surveymonkey.com/r/EmployeeHealthCheck?fbclid=IwAR2mFRg--vDyG4VOm0TwnBrRU74UOBSjnjDH4pA-_dSTe2BLysCOqheQJ5k" `
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
  "user-agent"="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36"
  "accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
  "sec-fetch-site"="same-origin"
  "sec-fetch-mode"="navigate"
  "sec-fetch-user"="?1"
  "sec-fetch-dest"="document"
  "referer"="https://zh.surveymonkey.com/r/EmployeeHealthCheck?fbclid=IwAR2mFRg--vDyG4VOm0TwnBrRU74UOBSjnjDH4pA-_dSTe2BLysCOqheQJ5k"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="zh-TW,zh;q=0.9"
  "cookie"="ep201=SaiPtr54l0naGhe9lsY3uG2jTiA=; ep202=Yjy4osBLBtiIGKyNVLv1ZyPjwWk=; ep203=HYIjhdysA44OAXcGHRBR9xV6U6s=; attr_multitouch=Vf5l8VokHxfD5GquXOcZoKZuNe8=; cdp_seg=wzS8QHPhCbHYdJqhAaqOO3LPTcs=; __hstc=187900919.1b1fc08bc8407a55faa3d56f34dea8dd.1620371223821.1620371223821.1620371223821.1; hubspotutk=1b1fc08bc8407a55faa3d56f34dea8dd; __hssrc=1; _ga=GA1.2.625176950.1620371230; _gid=GA1.2.1802362959.1620371230; __hssc=187900919.2.1620371223822"
} `
-ContentType "multipart/form-data; boundary=----WebKitFormBoundaryz8dzhOyOAHCgNEST" `
-Body ([System.Text.Encoding]::UTF8.GetBytes("------WebKitFormBoundaryz8dzhOyOAHCgNEST$([char]13)$([char]10)Content-Disposition: form-data; name=`"647719974`"$([char]13)$([char]10)$([char]13)$([char]10)4255613818$([char]13)$([char]10)------WebKitFormBoundaryz8dzhOyOAHCgNEST$([char]13)$([char]10)Content-Disposition: form-data; name=`"647719971`"$([char]13)$([char]10)$([char]13)$([char]10)039796$([char]13)$([char]10)------WebKitFormBoundaryz8dzhOyOAHCgNEST$([char]13)$([char]10)Content-Disposition: form-data; name=`"647719976`"$([char]13)$([char]10)$([char]13)$([char]10)4255613822$([char]13)$([char]10)------WebKitFormBoundaryz8dzhOyOAHCgNEST$([char]13)$([char]10)Content-Disposition: form-data; name=`"647719981`"$([char]13)$([char]10)$([char]13)$([char]10)4255613851$([char]13)$([char]10)------WebKitFormBoundaryz8dzhOyOAHCgNEST$([char]13)$([char]10)Content-Disposition: form-data; name=`"647719973`"$([char]13)$([char]10)$([char]13)$([char]10)4255613808$([char]13)$([char]10)------WebKitFormBoundaryz8dzhOyOAHCgNEST$([char]13)$([char]10)Content-Disposition: form-data; name=`"survey_data`"$([char]13)$([char]10)$([char]13)$([char]10)4FoTYerhlqpl9PSGmuD5IbfgrbSIMgafjNRkOERg47WGeseowojUuqYwRghdMn7F3rny6IM2ZWl93eEAaIfJ9bPsETN5tRjPR6Ab81UhlGSTkiKYqPx29AKgCkGtsYqz0FMI5Zf23d_2F0k8fjCUDGNDPI2naHiLW5weHBjCvSwB5m3AO6K0svkskMAFh4NLq21J8ASnYB7WsJMjdwKwnQ6VmdT8AL0zj5NTz4rL1UUNknfleCcbwDdeaeJMJg_2FJPHHpiaTB54aWYYxYmluuzbvAvZhAuoysMx7MP7PD74aqdvMSxKXN74A5RglliPpH9teauMayKqptqByjAjJhvLAzRttU8amkqRKfQEuhze5_2Bzh7ZHFk_2Bpeu2N5EJRz3_2FVj0X7fP6zRG21CGQJhzJ2BDzWf19Cw_2BHs0HjOK2Sz35t9cgLj8W0sMuhJWv1IJwppxr00D_2F27JY3RgOal6JOagPwfEDrnc6XkvT3SOTq6lVlQUMvcjJ3s8HPRMQBy4f5O8f7e9LqtC_2FGusKR1vWZYPzCIuGeGk4MFq1DcDxhbnpnXWaPPLSh_2Bq4Jhf_2FjCI_2BfLx$([char]13)$([char]10)------WebKitFormBoundaryz8dzhOyOAHCgNEST$([char]13)$([char]10)Content-Disposition: form-data; name=`"response_quality_data`"$([char]13)$([char]10)$([char]13)$([char]10){`"question_info`":{`"qid_647719975`":{`"number`":-1,`"type`":`"presentation_text`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":false},`"qid_647719974`":{`"number`":1,`"type`":`"single_choice_vertical`",`"option_count`":1,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[0,0]],`"dimensions`":[1,1],`"input_method`":null,`"is_hybrid`":false},`"qid_647719971`":{`"number`":2,`"type`":`"open_ended`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":true},`"qid_647719976`":{`"number`":3,`"type`":`"single_choice_vertical`",`"option_count`":2,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[0,0]],`"dimensions`":[2,1],`"input_method`":null,`"is_hybrid`":false},`"qid_647719977`":{`"number`":-1,`"type`":`"presentation_text`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":false},`"qid_647719981`":{`"number`":4,`"type`":`"single_choice_vertical`",`"option_count`":2,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[1,0]],`"dimensions`":[2,1],`"input_method`":null,`"is_hybrid`":false},`"qid_647719973`":{`"number`":5,`"type`":`"single_choice_vertical`",`"option_count`":1,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[0,0]],`"dimensions`":[1,1],`"input_method`":null,`"is_hybrid`":false}},`"tooltip_open_count`":0,`"opened_tooltip`":false,`"start_time`":1620371229770,`"end_time`":1620371318433,`"time_spent`":88663,`"previous_clicked`":false,`"has_backtracked`":false,`"bi_voice`":{}}$([char]13)$([char]10)------WebKitFormBoundaryz8dzhOyOAHCgNEST$([char]13)$([char]10)Content-Disposition: form-data; name=`"is_previous`"$([char]13)$([char]10)$([char]13)$([char]10)false$([char]13)$([char]10)------WebKitFormBoundaryz8dzhOyOAHCgNEST$([char]13)$([char]10)Content-Disposition: form-data; name=`"disable_survey_buttons_on_submit`"$([char]13)$([char]10)$([char]13)$([char]10)$([char]13)$([char]10)------WebKitFormBoundaryz8dzhOyOAHCgNEST--$([char]13)$([char]10)"))



$response.Content

$response.Content | out-file -FilePath d:\result.html -Force; #same as the file saved from the webpage to html file in IE
$response.Headers > d:\result-Header.html
$response.InputFields > d:\result-InputFields.html
$response.BaseResponse > d:\result-BaseResponse.html