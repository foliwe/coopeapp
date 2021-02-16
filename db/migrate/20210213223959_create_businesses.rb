class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :business_type
      t.integer :number_of_employee
      t.boolean :accepts_partnership
      t.boolean :active
      t.boolean :verified

      t.timestamps
    end
  end
end
