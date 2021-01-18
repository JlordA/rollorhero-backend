class DeliSerializer < ActiveModel::Serializer
    attributes :id, :name, :address, :style, :hours_open, :neighborhood, :borough, :lat, :lng
    has_many :reviews
    has_many :users
    has_many :deli_sandwiches
    has_many :sandwiches
end
