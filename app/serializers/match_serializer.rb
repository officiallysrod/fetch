class MatchSerializer < ActiveModel::Serializer
  attributes :id, :fname, :lname, :dog_name, :bio, :short_bio, :profile_pic, :profile_pic_large, :profile_pic_medium, :profile_pic_small, :profile_pic_thumb, :conversation_id, :conversation, :last_message_received

  delegate :current_user, to: :scope

  def profile_pic_large
    object.profile_pic.url(:large)
  end

  def profile_pic_medium
    object.profile_pic.url(:medium)
  end

  def profile_pic_small
    object.profile_pic.url(:small)
  end

  def profile_pic_thumb
    object.profile_pic.url(:thumb)
  end

  def short_bio
    object.bio.truncate(50, separator: /\s/)
  end

  def conversation_id
    @arr = []
    conversations = object.conversations.all
    conversations.each do |c|
      if c.user_ids.include?(current_user.id)
        @arr.push(c)
      end
    end

    conversation_id = @arr.first.id
  end

  def conversation
    object.conversations.all.each do |c|
      if c.user_ids.include?(current_user.id)
        @user_conversation = c
      end
    end
    @conversation_messages = @user_conversation.messages.all.order('created_at ASC')
  end

  def last_message_received
    conversation
    @conversation_messages.where(recipient_id: current_user.id).last
    # current_user.messages.where(recipient_id: current_user.id).last
  end

end
