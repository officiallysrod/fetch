class MatchSerializer < ActiveModel::Serializer
  attributes :id, :email, :fname, :lname, :dog_name, :bio, :profile_pic, :profile_pic_large, :profile_pic_medium, :profile_pic_small, :profile_pic_thumb, :conversation_id

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

end
