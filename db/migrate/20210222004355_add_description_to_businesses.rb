class AddDescriptionToBusinesses < ActiveRecord::Migration[6.1]
  def change
    add_column :businesses, :description, :text
  end
end
