require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should be successful" do
      visit '/static_pages/home'
      expect(page).to have_content('My App')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial My App | Home")
    end
  end

  describe "Help page" do
    it "should be successful" do
      visit '/static_pages/help'
      expect(page).to have_content('My App')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial My App | Help")
    end
  end

  describe "About page" do
    it "should be successful" do
      visit '/static_pages/about'
      expect(page).to have_content('About us')
    end

    it "should have the title 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial My App | About us")
    end
  end
end
