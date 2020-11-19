class Book < ApplicationRecord
  has_many :comments
  validates :name , presence:true
end



