class DeliSerializer < ActiveModel::Serializer
    attributes :name, :address, :style, :hours_open, :neighborhood, :borough, :lat, :lng
    has_many :reviews
    has_many :users
end
