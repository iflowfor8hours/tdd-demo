from lettuce import *
from selenium import webdriver

@before.all
def open_browser():
	world.browser = webdriver.Chrome()

@after.all
def close_browser(total):
	world.browser.close()