require "selenium/webdriver"
username = ENV["SAUCE_USERNAME"]
access_key = ENV["SAUCE_ACCESS_KEY"]

caps = {
    :platform => "Windows 7",
      :browserName => "Chrome",
        :version => "45"
}

driver = Selenium::WebDriver.for(:remote,
                                  :url => "http://#{username}:#{access_key}@ondemand.saucelabs.com:80/wd/hub",
                                    :desired_capabilities => caps)

driver.get('http://www.google.com')

puts "title of webpage is: #{driver.title.include? "Google"}"

driver.quit()
