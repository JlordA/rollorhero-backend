class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :neighborhood, :borough
    has_many :reviews
end