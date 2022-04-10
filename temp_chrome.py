from selenium import webdriver
from selenium.webdriver.common.by import By

import time

driver = webdriver.Chrome('chromedriver')
url ='https://zh.surveymonkey.com/r/EmployeeHealthCheck'

print("Get Result: ", driver.get(url))

# 同意
driver.find_element(by=By.XPATH, value="//label/span[2]").click()

# 工號
driver.find_element(by=By.XPATH, value = "//div/div/div/div/div/input").send_keys("039796")

driver.find_element(by=By.XPATH, value = "//div[2]/div/label/span").click()

driver.find_element(by=By.XPATH, value = "//div[5]/div/div/div/div/div/div/input").send_keys("36.5")

driver.find_element(by=By.XPATH, value = "//div[7]/div/div/fieldset/div/div/div/div/label/span").click()

driver.find_element(by=By.XPATH, value = "//div[8]/div/div/fieldset/div/div/div[4]/div/label/span").click()  

driver.find_element(by=By.XPATH, value = "//div[9]/div/div/fieldset/div/div/div[3]/div/label/span").click()

driver.find_element(by=By.XPATH, value = "//div[10]/div/div/fieldset/div/div/div/div/label/span[2]").click()

driver.find_element(by=By.XPATH, value = "//div[11]/div/div/fieldset/div/div/div/div/label/span[2]").click()

time.sleep(10000)

driver.find_element(by=By.XPATH, value = "//button").click()


#print(e1.text)

driver.close()


# XXXXXX
# e1 = driver.find_element_by_class_name('#\36 2391608_516129376_label > .radio-button-label-text')
# a = driver.find_element_by_class_name('radio-button-label-text question-body-font-theme user-generated').text
# print("Text: ", a)
