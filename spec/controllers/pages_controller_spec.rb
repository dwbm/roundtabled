require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'about'" do
    it "should be successful" do
      get :about
      response.should be_success
    end
	
	it "should have the right title" do
	  get :about
	  response.should have_selector("title", :content => "about")
	end
  end

  describe "GET 'thanks'" do
    it "should be successful" do
      get :thanks
      response.should be_success
    end
	
	it "should have the right title" do
	  get :thanks
	  response.should have_selector("title", :content => "thanks")
	end
  end

end
