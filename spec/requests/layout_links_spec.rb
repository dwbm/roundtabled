require 'spec_helper'

describe "LayoutLinks" do
  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "about")
  end

  it "should have a Thanks page at '/thanks'" do
    get '/thanks'
    response.should have_selector('title', :content => "thanks")
  end
  
  it "should have a launch page at '/launch'" do
    get '/launch'
    response.should have_selector('title', :content => "bring everything to the table")
  end
end
