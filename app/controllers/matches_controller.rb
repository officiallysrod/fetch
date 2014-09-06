class MatchesController < ApplicationController
  
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

  def events
    response.headers["Content-Type"] = "text/event-stream"
    start = Time.zone.now
    50.times do
      Message.uncached do
        Message.where('created_at > ?', start).each do |message|
          show_friends
          response.stream.write "data: #{@friends.to_json}...\n\n"
          start = message.created_at
        end
      end
      sleep 2
    end
  rescue IOError
  ensure
    response.stream.close  
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
