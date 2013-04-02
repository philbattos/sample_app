require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do ### This line indicates that we are describing the home page. It can be anything you want.
    it "should have the content 'Sample App'" do
      visit '/static_pages/home' ### uses the Capybara function "visit" to simulate visiting the URI /static_pages/home in a browser
      page.should have_content('Sample App') ### uses the Capybara variable "page" to test that the resulting page has the right content
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
end

