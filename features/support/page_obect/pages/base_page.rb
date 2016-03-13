class BasePage < SitePrism::Page
    include RSpec::Matchers

    def navigation_timeout
      Capybara.default_wait_time
    end

    #section :footer, Footer, '#globalFooterNav'
    #section :header, Header, '.navContainer'

  end
