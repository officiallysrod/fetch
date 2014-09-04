class ConversationsController < ApplicationController

  respond_to :html, :json

  def index
    @conversations = current_user.conversations.all
    respond_with @conversations, each_serializer: ConversationSerializer
  end

end
