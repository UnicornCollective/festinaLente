class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :last_name
      t.string :first_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :mobile_phone
      t.string :work_phone
      t.string :email

      t.timestamps
    end
  end
end
