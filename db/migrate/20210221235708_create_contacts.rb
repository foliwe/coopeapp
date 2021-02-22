class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :business_email
      t.string :phone
      t.string :mobile
      t.text_area :note

      t.timestamps
    end
  end
end
