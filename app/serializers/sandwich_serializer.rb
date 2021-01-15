class SandwichSerializer < ActiveModel::Serializer
    attributes :name, :description, :price, :style, :rating
    has_many :likes
end