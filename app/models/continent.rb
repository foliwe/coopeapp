class Continent < ApplicationRecord
    has_many :locations
    has_many :businesses, through: :locations
end
