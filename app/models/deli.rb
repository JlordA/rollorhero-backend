class Deli < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :deli_sandwiches
    has_many :sandwiches, through: :deli_sandwiches
end
