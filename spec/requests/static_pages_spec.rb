require 'spec_helper'

describe "StaticPages" do
  describe "GET Home page" do
    it "should have the content 'Home page'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get root_path
      response.status.should be(200)
    end

    it "should have the content 'Home page' capybara version" do
      visit '/static_pages/home'
      expect(page).to have_content('Home page') # this is rspec have_
    end
  end
  
  describe "Get help page" do
    it "should have help" do
      visit '/static_pages/help'
      page.has_content?('help') # this is capybara
    end
  end

  describe "Get about page" do
    it "should have about" do
      visit about_path
      expect(page).to have_content('about')
    end
  end

  describe "Title of the page" do
    it "shoud be the same as" do
      visit about_path
      expect(page).to have_title('About')
    end
  end

end
