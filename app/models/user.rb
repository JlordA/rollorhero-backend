class User < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :sandwiches, through: :likes
    has_many :reviews, dependent: :destroy
    has_many :delis, through: :reviews
    has_secure_password
end
