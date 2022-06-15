class Gemstone < ApplicationRecord
    validates :name, presence: true, length: { maximum: 24 }
    validates :description, presence: true, length: { maximum: 80 }
    validates :price, presence: true
end
