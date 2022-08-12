class Categorier < ApplicationRecord
    validates :category_id, presence: true
    belongs_to :category
    has_many :product_categories
end
