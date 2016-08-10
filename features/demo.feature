Feature: Demo feature

  @C001
  Scenario: Google search for Amdocs returns correct homepage in results
    Given I am on the homepage "http://www.google.com"
    When I enter text "Amdocs" and click "Search"
    And I click on the "Amdocs: Telco Digital Transformation, Customer Experience" link
    Then I am brought to website "http://www.amdocs.com/pages/homepage.aspx"

  @C002
  Scenario: Google search for Amdocs returns correct homepage in results
    Given I am on the homepage "http://www.google.com"
    When I enter text "Amdocs" and click "Search"
    And I click on the "Amdocs: Telco Digital Transformation, Customer Experience" link
    Then I am brought to website "http://www.amdocs.com/pages/homepage.aspx"

  @C003
  Scenario: A search on amazon returns the expected item
    Given I am on the homepage "https://www.amazon.com"
    When I search for text "ps4" and click "Go"
    And I click on the "PlayStation 4 500GB Console - Call of Duty Black Ops III Bundle" link
    Then I am brought to website "https://www.amazon.com/PlayStation-500GB-Console-Black-Bundle-4/dp/B018V3ISJ2/ref=sr_1_1?ie=UTF8&qid=1470087620&sr=8-1&keywords=ps4"
  
