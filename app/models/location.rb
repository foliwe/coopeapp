class Location < ApplicationRecord
  belongs_to :continent
  belongs_to :business
end
