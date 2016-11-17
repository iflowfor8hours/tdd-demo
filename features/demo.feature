Feature: Demo feature

  @C001
	Scenario: Google search for Amdocs returns correct homepage in results
		Given I am on the homepage "http://www.google.com"
    When I enter text "Amdocs" and click "Search"
    And I click on the "Amdocs: Telco Digital Transformation, Customer Experience" link
    Then I am brought to website "http://www.amdocs.com/pages/homepage.aspx"

  @C002
  Scenario: Amdocs Homepage contains the correct content
    Given I am on the homepage "http://www.google.com"
    When I enter text "Amdocs" and click "Search"
    And I click on the "Amdocs: Telco Digital Transformation, Customer Experience" link
    Then I see text "Digital Revolution is Changing Everything"

  @C003
  Scenario: Amdocs Vision page contains the correct sidebar links
    Given I am on the homepage "http://www.amdocs.com/"
    When I click on the "Vision" link
    Then I see text "Digital Dimensions"
    And I see text "Diversified Business"
    And I see text "Data Empowered"
    And I see text "Service Agility"

  @C004
  Scenario: Amdocs Solutions page contains the correct content
    Given I am on the homepage "http://www.amdocs.com/"
    When I click on the "Products" link
    Then I see text "Business Solutions"
    And I see text
    """
		Amdocs drives innovation in the development and implementation of products to enable service providers to capture the world of digital immediacy. Our integrated modular software portfolio spans the following domains: 
    """
