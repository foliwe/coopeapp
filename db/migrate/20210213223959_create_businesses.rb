class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :number_of_employee
      t.boolean :accepts_partnership

      t.timestamps
    end
  end
end
