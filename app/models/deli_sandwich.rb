class DeliSandwich < ApplicationRecord
  belongs_to :sandwich
  belongs_to :deli
end
