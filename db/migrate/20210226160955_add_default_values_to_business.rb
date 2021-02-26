class AddDefaultValuesToBusiness < ActiveRecord::Migration[6.1]
  def change
    change_column :businesses, :verified, :boolean, default: false
    change_column :businesses, :active, :boolean, default: true
  end
end
