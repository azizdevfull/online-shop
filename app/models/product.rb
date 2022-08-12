class Product < ApplicationRecord
    extend FriendlyId
    has_many :order_items
    friendly_id :name, use: :slugged    
    validates :product_category_id, presence: true
    belongs_to :product_category
    has_one_attached :image

end
