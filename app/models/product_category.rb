class ProductCategory < ApplicationRecord
    validates :categorier_id, presence: true
    belongs_to :categorier
    has_many :products
end
