class Cat < ApplicationRecord
  belongs_to :user
  has_many :appointments
end
