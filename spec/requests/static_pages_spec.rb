require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do ### This line indicates that we are describing the home page. It can be anything you want.
    it "should have the content 'Sample App'" do
      visit '/static_pages/home' ### uses the Capybara function "visit" to simulate visiting the URI /static_pages/home in a browser
      page.should have_selector('h1', :text => 'Sample App') ### uses the Capybara variable "page" to test that the resulting page has the right content
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Home") ### this is a hash that uses a symbol as the key to find the text on the webpage.
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "should provide 'about' information for our app" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | About")
    end
  end

end

