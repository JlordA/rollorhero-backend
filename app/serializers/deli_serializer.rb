class DeliSerializer < ActiveModel::Serializer
    attributes :name, :address, :style, :hours_open, :neighborhood, :borough, :lat, :lng
    has_many :reviews
end
