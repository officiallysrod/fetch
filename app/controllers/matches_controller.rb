class MatchesController < ApplicationController
  def index
    @matches = current_user.matches.all
    @friends = []

    #finds all users in the current_user's matches array 
    #who are not the current_user and pushes them into a friends array
    @matches.each do |match|
      @friends.push(match.users.where.not(id: current_user.id).first)
    end

    @friends

  end

  def show
    @match = Match.find(params[:id])
    show_friends
  end

  def new
    @match = Match.new
  end

  def create

  end

  def destroy
    @match = Match.where(params[:id]).first
    @match.destroy
    redirect_to users_path
  end

private

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
