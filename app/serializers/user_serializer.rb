class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :email, :profile_picture, :name
end
