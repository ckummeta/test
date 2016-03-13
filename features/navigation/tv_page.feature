@television
Feature: Which? Television page navigation
  In order to browse television page
  As a Which? site visitor
  I want a working Which? Television page

 Background: Visit home page
   Given I visit Which? Television page

  Scenario: Navigate to Best Buys
    When I click on Best Buys link
    Then Best Buys page is displayed

  Scenario: Navigate to Advice Guides
    When I click on Advice Guides link
    Then Advice guides page is displayed

  Scenario: Televisions page navigation
    Given there is more than one Television listing pages
    When I click on next page
    Then next page should be displayed

  Scenario: Navigate to a Television review
    Given there are Televisions listed
    When I click on a Television
    Then Product summary review page should be displayed

  Scenario: Add to compare
    Given I visit Which? Television page
    When I click on Add to compare link under a Television
    Then selected Television is added to product compare section

  @compare
  Scenario: Remove from compare
    Given a Television was added to product compare section
    When I click on remove from compare link
    Then Television is removed from product compare section

  @compare
  Scenario: Maximum number of Televisions to compare
    Given I have added 4 Televisions to compare
    When I add another Television to compare
    Then "You already have 4 products for comparison" message displayed

  @display
  Scenario: Sign up banner in Television homepage
    Then I should see a sign up banner

  @display
  Scenario: Members exclusive options under Filters
    Then I should see Members Exclusive section under Filters

  @display
  Scenario: Check sort by options
    Then following sort options are available
      | Most-recently tested      |
      | Highest Which? score      |
      | Price (low to high)       |
      | Price (high to low)       |
      | Screen size (high to low) |
      | Most-recently launched    |

  @display
  Scenario: Check Filters
    Then following filters are available
      | Screen size       |
      | Price             |
      | Which? recommends |
      | Brands            |
      | Screen            |
      | Resolution        |
      | Features          |
      | Retailers         |

  @navigation
  Scenario: Television review page links
    Given I am in a Television review page
    Then I can navigate to following review information tabs
      |Review|
      |Test Results|
      |Technical Specifications            |
      |Where to buy                        |



