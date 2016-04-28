require "selenium/webdriver"

module SauceDriver
  class << self
    def sauce_endpoint
      username = ENV["SAUCE_USERNAME"]
      access_key = ENV["SAUCE_ACCESS_KEY"]
      "http://#{username}:#{access_key}@ondemand.saucelabs.com:80/wd/hub"
    end

    def caps
      caps = {
        :platform => "Mac OS X 10.9",
        :browserName => "Chrome",
        :version => "31",
        :name => "Test Sauce Lab",
        :passed => "true",
        :build => "build-123"
      }
    end

    def new_driver
      Selenium::WebDriver.for :remote, :url => sauce_endpoint, :desired_capabilities => caps
    end
  end
end
