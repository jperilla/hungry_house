require 'spec_helper'

describe "LayoutLinks" do

    it "should have a Home page at '/'" do
      get '/'
      response.should have_selector('title', :content => "Hungry House")
    end

    it "should have a Contact page at '/contact'" do
      get '/contact'
      response.should have_selector('title', :content => "Hungry House | Contact")
    end

    it "should have an About page at '/about'" do
      get '/about'
      response.should have_selector('title', :content => "Hungry House | About")
    end

    it "should have a Help page at '/help'" do
      get '/help'
      response.should have_selector('title', :content => "Hungry House | Help")
    end
    
    it "should have a Users page at '/users/new'" do
      get '/users/new'
      response.should have_selector('title', :content => "Hungry House | Sign up")
    end
  
end
