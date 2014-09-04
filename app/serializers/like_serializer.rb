class LikeSerializer < ActiveModel::Serializer
  attributes :id, :liker_id, :likee_id
end
