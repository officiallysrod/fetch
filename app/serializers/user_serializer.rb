class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :fname, :lname, :dog_name, :bio
end
