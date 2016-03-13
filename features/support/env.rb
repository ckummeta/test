$: << "."
support_dir = File.join(File.dirname(__FILE__))
$LOAD_PATH.unshift File.expand_path(support_dir)

require "capybara"
require "capybara/cucumber"
require "cucumber"
require "rspec"
require "selenium-webdriver"
require "site_prism"

TEST_CONFIG = ENV.to_hash || {}

environments = {
    'QA' => 'https://qa.com',
    'PROD' => 'http://www.which.co.uk/reviews/televisions'
}

TEST_CONFIG['SERVER'] ||= 'PROD'
Capybara.app_host = environments[TEST_CONFIG['SERVER'].upcase]

Capybara.default_driver = :selenium
Capybara.default_wait_time = 20

TEST_CONFIG['BROWSER_NAME'] ||= 'chrome'
caps = case TEST_CONFIG['BROWSER_NAME'].downcase
         when 'firefox', 'chrome'
           browser_name = TEST_CONFIG['BROWSER_NAME'].downcase.to_sym
           Selenium::WebDriver::Remote::Capabilities.send(TEST_CONFIG['BROWSER_NAME'].downcase.to_sym)
         else
           raise "Not supported browser: #{TEST_CONFIG['BROWSER_NAME']}"
       end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
                                 :browser => browser_name,
                                 :desired_capabilities => caps)
  end




