class AddCategoryIdToBusinesses < ActiveRecord::Migration[6.1]
  def change
    add_column :businesses, :category_id, :integer
  end
end
