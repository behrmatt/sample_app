require 'spec_helper'

describe "Static pages" do

let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_text("Home")
    end

    it "should have the base title 'Home'" do
      visit '/static_pages/home'
      page.should have_title("#{base_title}")
    end

    it "should have a custom title'" do
      visit '/static_pages/home'
      page.should_not have_title("Home")
    end

  end


  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_text("Help")
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_title("Help | #{base_title}")
    end

  end


  describe "About" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_text("About")
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_title("About | #{base_title}")
    end
  end

  describe "Contact" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_text("Contact")
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_title("Contact | #{base_title}")
    end
  end


end
