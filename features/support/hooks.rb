Before ('@television') do
page.driver.browser.manage.window.maximize
end

After ('@television') do
  page.driver.quit
end



