class SandwichSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :price, :style, :rating, :image
    has_many :likes
    has_many :users
    has_many :deli_sandwiches
    has_many :delis
end