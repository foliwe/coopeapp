class Business < ApplicationRecord
    has_many :locations
    has_many :continent, through: :locations
end
