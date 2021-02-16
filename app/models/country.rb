class Country < ApplicationRecord
    has_many :business_locations
    belongs_to :continent
    has_many :businesses ,through: :business_locations
end
