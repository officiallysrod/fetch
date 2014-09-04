class MessagesController < ApplicationController

  respond_to :json

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.sender = current_user

    if @message.save
      render json: @message, status: :created
    end
  end

private

def message_params
  params.require(:message).permit(:sender_id, :recipient_id, :body, :conversation_id)
end

end
