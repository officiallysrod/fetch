class WelcomeController < ApplicationController
  before_action :login, :signup # Login/Signup from Welcome view

  def index
  end
end
