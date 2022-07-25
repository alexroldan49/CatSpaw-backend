class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :age

  belongs_to :user
end
