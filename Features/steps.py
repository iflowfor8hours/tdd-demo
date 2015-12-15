from lettuce import *
from selenium import webdriver
from selenium.common.exceptions import ElementNotVisibleException
import time
import re

def ignore_line_breaks(text):
	new_text = re.sub(r'\n|\r', ' ', text)
	return new_text

def get_labeled_input(label):
	label = world.browser.find_element_by_xpath('//label[text()="' + label + '"]')
	labeled_input = world.browser.find_element_by_id(label.get_attribute('for'))
	return labeled_input

@step(u'Given I am on the homepage "(.+)"')
def given_url(step, url):
	world.browser.get(url)

@step(u'When I enter text "(.+)" and click "(.+)"')
def google_search(step, google_search_text, button_name):
	world.browser.find_element_by_xpath('.//input[@name="q"]').send_keys(google_search_text)
	time.sleep(1)
	world.browser.find_element_by_xpath('.//button[@value="' + button_name + '"]').click()
	time.sleep(1)

@step(u'(When|And) I click on the "(.+)" link')
def click_partial_link_text(step, when_and, partial_link_text):
	time.sleep(2)
	link = world.browser.find_element_by_partial_link_text(partial_link_text)
	try:
			link.click()
	except ElementNotVisibleException:
		world.browser.execute_script("arguments[0].scrollIntoView();", link)
		link.click()
	time.sleep(1)

@step(u'Then I am brought to website "(.+)"')
def current_page(step, url):
	assert world.browser.current_url == url

@step(u'(Then|And) I see text "(.+)"')
def search_page_text(step, then_and, seen_text):
	assert ignore_line_breaks(seen_text) in ignore_line_breaks(world.browser.find_element_by_xpath('//body').text)

@step(u'(Then|And) I see text')
def search_page_pystring(step, then_and):
	search_page_text(step, 'Then', step.multiline)

@step(u'Then I see the following leaders')
def tap_leaders(step):
	leader_xpath = '//div[@class="leadership"]//h2'
	seen_leaders = [x.text for x in world.browser.find_elements_by_xpath(leader_xpath)]
	expected_leaders = step.multiline.split('\n')
	assert len(seen_leaders) == len(expected_leaders)
	for leader in expected_leaders:
		assert leader in seen_leaders

@step(u'Then I can fill out the form')
def tap_contact_form(step):
	for row in step.hashes:
		input_field = get_labeled_input(row['key'])
		try:
			input_field.send_keys(row['value'])
		except ElementNotVisibleException:
			world.browser.execute_script("arguments[0].scrollIntoView();", input_field)
			input_field.send_keys(row['value'])