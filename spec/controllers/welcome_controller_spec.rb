require 'rails_helper'
RSpec.describe WelcomeController, :type => :controller do
	describe "welcome index" do
		 it "test if index route is true" do
		 	# grabbing route not method testing
  		 		get :index
  		 		expect(response).to render_template("index")
		 end
		xit "test if is_signup is true inside index method" do
			# instantiate object
			# object.index.to be_truthy
		end
		
	end
end