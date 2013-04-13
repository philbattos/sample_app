require 'spec_helper'

describe "StaticPages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  subject { page } ### Capybara command that tells rspec that "page" is the subject of the tests

  describe "Home page" do ### This line indicates that we are describing the home page. It can be anything you want.
    before { visit root_path } ### could also be written: before(:each)

    # it "should have the h1 'Sample App'" do ### this test was replaced below
      # visit '/static_pages/home' ### uses the Capybara function "visit" to simulate visiting the URI /static_pages/home in a browser
      # visit root_path ### this action was repeated in the three tests for "Home page" so it was extracted above into a before block
    it { should have_selector('h1', text: 'Sample App') } ### combined with "subject" command above, this line replaces first test
    it { should have_selector 'title', text: full_title('') } ### combined with "subject" command above, this line replaces second test
    # it { should_not have_selector 'title', text: '| Home') } ### combined with "subject" command above, this line replaces first test (and then was replaced by full_title method)

      # page.should have_selector('h1', :text => 'Sample App') ### uses the Capybara variable "page" to test that the resulting page has the right content
    # end

    # it "should have the base title" do ### this test was replaced above
      # visit root_path ### extracted to before block above
    #   page.should have_selector('title',
    #                     :text => "Ruby on Rails Tutorial Sample App") ### this is a hash that uses a symbol as the key to find the text on the webpage.
    # end

    # it "should not have a custom page title" do ### this test was replaced above
      # visit root_path ### extracted to before block above
      # page.should_not have_selector('title', :text => "| Home")
    # end
  end

  describe "Help page" do
    before { visit help_path }

    it "should have the content 'Help'" do
      # visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      # visit help_path
      page.should have_selector('title',
                        :text => "#{base_title} | Help")
    end
  end

  describe "About page" do
    before { visit about_path }

    it "should provide 'about' information for our app" do
      # visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
      # visit about_path
      page.should have_selector('title',
                        :text => "#{base_title} | About")
    end
  end

  describe "Contact page" do
    before { visit contact_path }

    it "should have contact info" do
      # visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the right title" do
      # visit contact_path
      page.should have_selector('title',
                        :text => "#{base_title} | Contact")
    end
  end

end

