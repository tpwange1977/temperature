Clear-Host

$uri = 'https://zh.surveymonkey.com/r/EmployeeHealthCheck'

$body = @{
 "486014833"="3209788694"
 "486014830"="039796"
 "486014835"="3209788699"
 "486014831"="36.3"
 "486015076"="3209796414"
 "486014832"="3209788684"
 "survey_data"="4FoTYerhlqpl9PSGmuD5IReAv6eL8ViGqwzsSSZ5lqPTJXb2H5d9405wosBYOy1hPs1OoXeX70JvLE9SVcyivaA7M35TNpOXhqDFEgp_2FzUYtx59UotZT_2BO7mGJJ9b6A7ZaaZhY7DgHpem8IA4asa7OaXPMOYQttjXHBIquJCVLr_2FasIpadZ0TpldWuB4mI7oa_2FcN_2BmRa67uV5T4i6Sv9Icc_2BqaVjVdv_2FBLR_2Bfqi0aMhPra51jlRAyhEPIyK4xD_2FFj0JsKfnJ41WmagM4tuHryd4LF4CHTf4Us_2B84qgoEH_2B8fIz_2Br0_2FGtJO9i49FiKuQdG7DiT0IS_2F4z18y_2BMdk8vQMt8KpKsjQsM4j1dmb24NRlRdSFFwT3z02bOWKk_2F3H9b06tEEaPXqPUy4if0fF10f1jt93ubFJLfD9vDBLtX8DmS3fgeb8blPe0jPpxr_2FmDRia4kTMPPI2U4OKQK84wkDBuFJH8sKEBrVszWi6nUlEoUC9BMSbfLkBraavXeZW9X109_2FzXjio8KuzzBksgCZ8EPXhXh7_2BWI1mRgc9_2FGtnPbxrNKTrF_2FVZRL7whtNbSZ0"
} 

try {
    Invoke-WebRequest -UseBasicParsing -Uri $uri -Method POST -Body ($body | ConvertTo-Json) -ContentType 'application/json'
} catch 
{
    $_.Exception.Response.StatusCode.Value__
    $_.Exception.Response
}

$firstContact = Invoke-WebRequest -UseBasicParsing -Uri $uri -Method POST -SessionVariable websession -Body ($body | ConvertTo-Json) -ContentType 'application/json'

#$firstContact.Content > D:\result.html

#Write-Host $webSession.Cookies.GetCookies($uri)

#Write-Host $body


$response = Invoke-WebRequest -UseBasicParsing -Uri $uri ` #-WebSession $webSession -Body $body 
-Method "POST" `
-Headers @{
"method"="POST"
  "authority"="zh.surveymonkey.com"
  "scheme"="https"
  "path"="/r/EmployeeHealthCheck"
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
  "referer"="https://zh.surveymonkey.com/r/EmployeeHealthCheck"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7"
} `
-ContentType "multipart/form-data; boundary=----WebKitFormBoundaryY6ECzkbHxVx0JKEI" `


#-Body ([System.Text.Encoding]::UTF8.GetBytes("------WebKitFormBoundaryY6ECzkbHxVx0JKEI$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014833`"$([char]13)$([char]10)$([char]13)$([char]10)3209788694$([char]13)$([char]10)------WebKitFormBoundaryY6ECzkbHxVx0JKEI$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014830`"$([char]13)$([char]10)$([char]13)$([char]10)039796$([char]13)$([char]10)------WebKitFormBoundaryY6ECzkbHxVx0JKEI$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014835`"$([char]13)$([char]10)$([char]13)$([char]10)3209788699$([char]13)$([char]10)------WebKitFormBoundaryY6ECzkbHxVx0JKEI$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014831`"$([char]13)$([char]10)$([char]13)$([char]10)36.3$([char]13)$([char]10)------WebKitFormBoundaryY6ECzkbHxVx0JKEI$([char]13)$([char]10)Content-Disposition: form-data; name=`"486015076`"$([char]13)$([char]10)$([char]13)$([char]10)3209796414$([char]13)$([char]10)------WebKitFormBoundaryY6ECzkbHxVx0JKEI$([char]13)$([char]10)Content-Disposition: form-data; name=`"486014832`"$([char]13)$([char]10)$([char]13)$([char]10)3209788684$([char]13)$([char]10)------WebKitFormBoundaryY6ECzkbHxVx0JKEI$([char]13)$([char]10)Content-Disposition: form-data; name=`"survey_data`"$([char]13)$([char]10)$([char]13)$([char]10)4FoTYerhlqpl9PSGmuD5IReAv6eL8ViGqwzsSSZ5lqPTJXb2H5d9405wosBYOy1hPs1OoXeX70JvLE9SVcyivaA7M35TNpOXhqDFEgp_2FzUZ3QZ_2F_2F_2Bxtl3UKzml9Piqa31YcZ8kQRM_2Fd_2FszLPUrGxyXqn07HRRL0lBkVyxrEcrD4ufrlhoj461Q5cx6X141wTEXVkJbvaoUKuG96sLPFvF9wjs5Efa50L2Xu0KafPDeJhv8adtwttJCuzdKmTAiNcM4PiX7GYGotWBfVwvoWWgDIkMbrvW9GAdyXTjSeB5EsY4FbT5f6Px_2FVISxmBmBFU8_2BGGVPQB4x3ThcjdoZUkXYczoQ8uTxsjIKkF6L6lKC07HQCx29lhsLTNGqt0SpEaze90yuerRSJIPUEFNX45H7gzcXbQ748NH5wLzNc3RBN8rEl19z_2FTTeCseyBw_2Fsi55cxXTcIa4jXipjDYe4eu2prP_2BNEmU7JS_2FDdhaKIFbNyIBRvtZhhnrkRhzmV6xUgry91UrZmZJQvrZB3UFF4ZRtF8TVzQXNN42jjsx_2FF6aDSESuZXHp7Ie8LXV7JsTo25$([char]13)$([char]10)------WebKitFormBoundaryY6ECzkbHxVx0JKEI$([char]13)$([char]10)Content-Disposition: form-data; name=`"response_quality_data`"$([char]13)$([char]10)$([char]13)$([char]10){`"question_info`":{`"qid_486014834`":{`"number`":-1,`"type`":`"presentation_text`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":false},`"qid_486014833`":{`"number`":1,`"type`":`"single_choice_vertical`",`"option_count`":1,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[0,0]],`"dimensions`":[1,1],`"input_method`":null,`"is_hybrid`":false},`"qid_486014830`":{`"number`":2,`"type`":`"open_ended`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":true},`"qid_486014835`":{`"number`":3,`"type`":`"single_choice_vertical`",`"option_count`":3,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[1,0]],`"dimensions`":[3,1],`"input_method`":null,`"is_hybrid`":false},`"qid_486014831`":{`"number`":4,`"type`":`"open_ended`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":true},`"qid_486014836`":{`"number`":-1,`"type`":`"presentation_text`",`"option_count`":null,`"has_other`":false,`"other_selected`":null,`"relative_position`":null,`"dimensions`":null,`"input_method`":null,`"is_hybrid`":false},`"qid_486015076`":{`"number`":5,`"type`":`"single_choice_vertical`",`"option_count`":2,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[1,0]],`"dimensions`":[2,1],`"input_method`":null,`"is_hybrid`":false},`"qid_486014832`":{`"number`":6,`"type`":`"single_choice_vertical`",`"option_count`":1,`"has_other`":false,`"other_selected`":null,`"relative_position`":[[0,0]],`"dimensions`":[1,1],`"input_method`":null,`"is_hybrid`":false}},`"tooltip_open_count`":0,`"opened_tooltip`":false,`"start_time`":1619735217854,`"end_time`":1619735233570,`"time_spent`":15716,`"previous_clicked`":false,`"has_backtracked`":false,`"bi_voice`":{}}$([char]13)$([char]10)------WebKitFormBoundaryY6ECzkbHxVx0JKEI$([char]13)$([char]10)Content-Disposition: form-data; name=`"is_previous`"$([char]13)$([char]10)$([char]13)$([char]10)false$([char]13)$([char]10)------WebKitFormBoundaryY6ECzkbHxVx0JKEI$([char]13)$([char]10)Content-Disposition: form-data; name=`"disable_survey_buttons_on_submit`"$([char]13)$([char]10)$([char]13)$([char]10)$([char]13)$([char]10)------WebKitFormBoundary
#--$([char]13)$([char]10)"))


$response.Content | out-file -FilePath d:\result.html -Force; #same as the file saved from the webpage to html file in IE
$response.Headers > d:\result-Header.html
$response.InputFields > d:\result-InputFields.html
$response.BaseResponse > d:\result-BaseResponse.html



#if ($response.Context.IndexOf("Employee Self-check Body Temperature has Completed!") -gt 0) {
#  Write-Host -BackgroundColor Green "Employee Self-check Body Temperature has Completed!!"
#} else {
#  Write-Host -BackgroundColor Red "Report Failed!"
#}


#>