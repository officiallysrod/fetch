class MatchesController < ApplicationController
  require 'redis'
  include ActionController::Live
  # before_action :verify_user, only: [:show, :destroy]

  respond_to :html, :json

  def index
    if current_user
      #private method - see below
      show_friends

      respond_with @friends, each_serializer: MatchSerializer
      
    else
      redirect_to root_path
    end
  end

  def show
    @match = Match.find(params[:id])
    
    #private method - see below
    show_friends
  end

  def destroy
    @match = Match.where(params[:id]).first
    @match.destroy
    redirect_to users_path
  end

private
  
  #verifies user access and redirects to users_path
  #if user is not authorized
  def verify_user
    @user = User.find(params[:id])
    redirect_to users_path unless @user == current_user
  end

  def show_friends
    @matches = current_user.matches.all
    @friends = []

    #finds all users in the current_user's matches array 
    #who are not the current_user and pushes them into a friends array
    @matches.each do |match|
      @friends.push(match.users.where.not(id: current_user.id).first)
    end

    @friends
  end

end
