class Sandwich < ApplicationRecord
    has_many :likes
    has_many :users, through: :likes
    has_many :deli_sandwiches
    has_many :delis, through: :deli_sandwiches
end
