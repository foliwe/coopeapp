class Business < ApplicationRecord
    has_many :business_locations
    has_many :countries, through: :business_locations
end
