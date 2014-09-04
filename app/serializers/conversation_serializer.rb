class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :match_id, :messages

  def messages
    object.messages.all
  end 
end
