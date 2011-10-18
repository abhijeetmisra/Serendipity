require 'spec_helper'

describe PagesController do
render_views

  describe "GET 'home'" do
    it "should be successfull" do
      get 'home'
      response.should be_success
    end

	it "should have the right title" do
		get 'home'
		response.should have_selector("title", :content => "Serendipity | Home")
	end
  end

  describe "GET 'contact'" do
    it "should be successfull" do
      get 'contact'
      response.should be_success
    end

	it "should have the right title" do
		get 'contact'
		response.should have_selector("title", :content => "Serendipity | Contact")
	end
  end

  describe "GET 'about'" do
    it "should be successfull" do
      get 'about'
      response.should be_success
    end

	it "should have the right title" do
		get 'about'
		response.should have_selector("title", :content => "Serendipity | About")
	end
  end

end
