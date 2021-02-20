class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string  :business_name
      t.string  :business_address
      t.string  :business_type
      t.integer :number_of_employee
      t.boolean :accepts_partnership
      t.boolean :active
      t.boolean :verified
      t.string  :zip_code
      t.string  :business_email
      t.string  :phone
      t.string  :mobile

      t.timestamps
    end
  end
end

