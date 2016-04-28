
describe "Google's Search Functionality" do
  it "can find search results", :run_on_sauce => true do
    @driver = SauceDriver.new_driver
    @driver.manage.timeouts.implicit_wait = 10
    @driver.navigate.to "http://www.google.com"

    raise "Unable to load Google." unless @driver.title.include? "Google"

    query = @driver.find_element :name, "q"
    query.send_keys "Sauce "
    query.submit

    puts @driver.title
  end
end
