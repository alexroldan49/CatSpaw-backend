class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :age, :image

  belongs_to :user
end
