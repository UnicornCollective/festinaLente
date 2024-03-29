class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name
      t.string :last_name
      t.string :first_name
      t.string :password_digest
      t.string :role

      t.timestamps
    end
  end
end
