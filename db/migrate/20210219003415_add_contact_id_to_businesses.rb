class AddContactIdToBusinesses < ActiveRecord::Migration[6.1]
  def change
    add_column :businesses, :contact_id, :integer
  end
end
