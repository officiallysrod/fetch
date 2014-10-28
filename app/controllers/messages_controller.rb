class MessagesController < ApplicationController
  require 'redis'
  include ActionController::Live
    
  respond_to :json

  def new
    @message = Message.new
  end

  def create
    response.headers["Content-Type"] = "text/javascript"
    @message = Message.new(message_params)
    @message.sender = current_user

    if @message.save
      render json: @message, status: :created
    end

    $redis.publish('messages.create', @message.to_json)
  end

  def events
    response.headers["Content-Type"] = "text/event-stream"
    redis = Redis.new(:url => ENV['REDISTOGO_URL'])

    sender = Thread.new do
      redis.psubscribe('messages.*') do |on|
        on.pmessage do |pattern, event, data|
          response.stream.write("event: #{event}\n")
          response.stream.write("data: #{data}\n\n")
        end
      end
    end
    sender.join
  rescue IOError
  ensure
    Thread.kill(sender) if sender
    redis.quit
    response.stream.close  
  end

private

  def message_params
    params.require(:message).permit(:sender_id, :recipient_id, :body, :conversation_id)
  end

end
