class AddProjectToEvent < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :project
  end
end
