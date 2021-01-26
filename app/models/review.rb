class Review < ApplicationRecord
  belongs_to :user
  belongs_to :deli
  has_many :sandwiches
end
