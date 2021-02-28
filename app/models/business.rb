class Business < ApplicationRecord
    has_many_attached :photos , dependent: :destroy
    belongs_to :category
    has_many :business_locations
    has_many :countries, through: :business_locations
    searchkick index_name: 'business',word_start: %i[name]

    scope :search_import, -> { includes(business_locations: {country: :continent})}

    def search_data
        {
          name: business_name,
          business_type: business_type,
          country: countries.present? ? countries.pluck(:name) : nil,
          continent: countries.present? ? countries.joins(:continent).map{|x|x.continent.name} : nil,
          verified: verified,
          partnership: accepts_partnership
        }
    end

end
