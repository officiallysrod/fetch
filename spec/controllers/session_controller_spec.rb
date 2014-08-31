require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

  # routes are mapped as:
  # match 'login' => 'session#create'
  # get 'logout' => 'session#destroy'
	describe "#create" do
    context "with valid credentials" do
      let :credentials do
        { :email => 'example@gmail.com', :password => 'secret' }
      end

      let :user do
        FactoryGirl.create(:user, credentials)
      end

      before :each do
        post '/login', credentials
      end

      it "creates a user session" do
        session[:user_id].should == user.id
      end
    end
  end
  describe "#destroy" do
    context "when user logged in" do
      before :each do
        get "/logout", {}, { :user_id => 123 } # the first hash is params, second is session
      end

      it "destroys user session" do
        session[:user_id].should be_nil
      end
    end
  end
end