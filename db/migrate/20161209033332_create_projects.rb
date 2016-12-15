class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :zip
      t.string :state
      t.integer :square_footage
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
