class BusinessLocation < ApplicationRecord
  belongs_to :business
  belongs_to :country
end
