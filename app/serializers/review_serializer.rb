class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :title, :date, :body, :rating, :user_id, :deli_id, :sandwiches
    belongs_to :user
    belongs_to :deli
    def sandwiches
        sandwich_array = []
        self.object.deli.sandwiches.each do |sandwich|
            sandwich_array.push(sandwich)
        end
        return sandwich_array
    end
end