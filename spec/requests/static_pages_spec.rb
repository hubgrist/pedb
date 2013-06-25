require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Private Equity Database'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Private Equity Database')
    end

    it "should have the right title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => "Private Equity Database | Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end

  	it "should have the right title" do
  		visit '/static_pages/help'
  		page.should have_selector('title', :text => "Private Equity Database | Help")
  	end
  end

  describe "About page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About')
  	end

  	it "should have the right title" do
  		visit '/static_pages/about' 
  		page.should have_selector('title', :text => "Private Equity Database | About")
  	end
  end
end