require 'spec_helper'

describe "Static pages" do


  describe "Home page" do
  before { visit root_path }

    it "should be successful" do
      expect(page).to have_content('My App')
    end
    
    it "should have the title 'Home'" do
      expect(page).to have_title("Ruby on Rails Tutorial My App")
    end

    it "should not have a custom page title" do
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    before { visit help_path }

    it "should be successful" do
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      expect(page).to have_title("Ruby on Rails Tutorial My App")
    end

    it "should not have a custom page title" do
      expect(page).not_to have_title('| Help')
    end
  end

  describe "About page" do
    before { visit about_path }

    it "should be successful" do
      expect(page).to have_content('About us')
    end

    it "should have the title 'About us'" do
      expect(page).to have_title("Ruby on Rails Tutorial My App")
    end

    it "should not have a custom page title" do
      expect(page).not_to have_title('| About us')
    end
  end

  describe "Contact page" do
    before { visit contact_path }

    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("| Contact")
    end
  end

end
