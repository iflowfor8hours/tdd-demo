Feature: Demo feature

  @C001
  Scenario: Google search for Lettuce returns correct homepage in results
    Given I am on the homepage "http://www.google.com"
    When I enter text "Python Lettuce" and click "Search"
    And I click on the "Lettuce - PythonHosted.org" link
    Then I am brought to website "https://pythonhosted.org/lettuce/tutorial/simple.html"


  @C002
  Scenario: Google search for Python returns correct homepage in results
    Given I am on the homepage "http://www.google.com"
    When I enter text "Python" and click "Search"
    And I click on the "Welcome to Python.org" link
    Then I am brought to website "https://www.python.org/"


  @C003
  Scenario: Lettuce homepage has correct introductory text
    Given I am on the homepage "http://www.google.com"
    When I enter text "Python Lettuce" and click "Search"
    And I click on the "Lettuce - PythonHosted.org" link
    Then I see text "Lettuce is an extremely useful and charming tool for BDD (Behavior Driven Development)."


  @C004
  Scenario: Python homepage has correct introductory text
    Given I am on the homepage "http://www.google.com"
    When I enter text "Python" and click "Search"
    And I click on the "Welcome to Python.org" link
    Then I see text "Python is a programming language that lets you work quickly and integrate systems more effectively."


  @C005
  Scenario: Google search for tapqa - click on homepage link
    Given I am on the homepage "http://www.google.com"
    When I enter text "tapqa" and click "Search"
    And I click on the "tap|QA: Software Quality Assurance Testing Company in MN" link
    Then I am brought to website "http://www.tapqa.com/"


  @C006
  Scenario: tapqa homepage - verify text 'We test software.'
    Given I am on the homepage "http://www.tapqa.com/"
    Then I see text "We test software."
    And I see text "What quality concerns keep you up at night?"


  @C007
  Scenario: tapqa solutions - verify solutions
    Given I am on the homepage "http://www.tapqa.com/"
    When I click on the "SOLUTIONS" link
    Then I see text "tap|STRATEGY"
    And I see text "tap|TECHNOLOGY"
    And I see text "tap|CONSULTING"
    And I see text "tap|LAKESHORE"

  @C008
  Scenario: tapqa solutions - verify tap|STRATEGY
    Given I am on the homepage "http://www.tapqa.com/"
    When I click on the "Strategy for Scaling Development & Quality" link
    Then I see text "tap|STRATEGY"
    And I see text
    """
    Helping our clients with understanding how their current business processes
    integrate with their IT processes, technology & organization structure.
    """

  @C009
  Scenario: tapqa solutions - verify tap|TECHNOLOGY
    Given I am on the homepage "http://www.tapqa.com/"
    When I click on the "Continuous Integration, Performance & Automation" link
    Then I see text "tap|TECHNOLOGY"
    And I see text
    """
    We use technology to provide meaningful metrics & transparency into your software development.
    """

  @C010
  Scenario: tapqa solutions - verify tap|CONSULTING
    Given I am on the homepage "http://www.tapqa.com/"
    When I click on the "Ensuring Quality in Software Development" link
    Then I see text "tap|CONSULTING"
    And I see text
    """
    We provide consultants with QA, BA and QC/Testing skills to augment our clients’ project teams or resource pool.
    """

  @C011
  Scenario: tapqa solutions - verify tap|LAKESHORE
    Given I am on the homepage "http://www.tapqa.com/"
    When I click on the "I Need a Nearshore Solution" link
    Then I see text "tap|LAKESHORE"
    And I see text
    """
    Your nearshore solution, even nearer than you thought. Coming to you from the land of 10,000 lakes,
    we have the drive and the know-how to get your job done right the first time.
    """

  @C012
  Scenario: tapqa leadership - verify leaders
    Given I am on the homepage "http://tapqa.com/"
    When I click on the "LEADERSHIP" link
    Then I see the following leaders
    """
    Kimberly Bunda / Consulting Partner
    Mike Faulise / Managing Partner
    Tim Guilfoil / Managing Partner
    Jennifer Bonine / VP, Global Delivery and Solutions
    Kirk Walton / Recruiting Director
    """

  @C013
  Scenario: tapqa contact - contact us
    Given I am on the homepage "http://tapqa.com/"
    When I click on the "CONTACT US" link
    Then I can fill out the form
    |key      | value                                           |
    |Name     | Adam Quality                                    |
    |Email    | adamquality@betterproducts.com                  |
    |Phone    | 1-800-QAEXPERTS                                 |
    |Message  | I'd like to learn more about improving quality! |