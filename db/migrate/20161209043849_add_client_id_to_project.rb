class AddClientIdToProject < ActiveRecord::Migration[5.0]
  def change
  	    add_reference :projects, :client
  end
end
