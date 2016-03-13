class BasePage < SitePrism::Page
    include RSpec::Matchers

    def navigation_timeout
      Capybara.default_wait_time
    end
  end
