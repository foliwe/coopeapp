class Business < ApplicationRecord
    has_many_attached :photos , dependent: :destroy
    belongs_to :category
    has_many :business_locations
    has_many :countries, through: :business_locations
end
