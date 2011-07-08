require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
	
	it "should have the right title" do
	  get 'new'
	  response.should have_selector("title", :content => "RoundTabled | bring everything to the table")
	end
	
  end
  
  describe "POST 'create'" do

    describe "failure" do

      before(:each) do
        @attr = { :email => "" }
      end

      it "should not create a user" do
        lambda do
          post :create, :user => @attr
        end.should_not change(User, :count)
      end

      it "should have the right title" do
        post :create, :user => @attr
        response.should have_selector("title", :content => "bring everything to the table")
      end

      it "should render the 'new' page" do
        post :create, :user => @attr
        response.should render_template('new')
      end
    end
	
	describe "success" do

      before(:each) do
        @attr = { :email => "user@example.com" }
      end

      it "should create a user" do
        lambda do
          post :create, :user => @attr
        end.should change(User, :count).by(1)
      end

      it "should redirect to the '/thanks' page" do
        post :create, :user => @attr
        response.should redirect_to(thanks_path)
      end
	
    end
	
  end

end
