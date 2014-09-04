class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :match_id, :users

  def users
    object.users.all
  end 
end
