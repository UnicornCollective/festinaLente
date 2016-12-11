class AddDuration3ToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :duration_hours, :float
    add_column :events, :duration_minutes, :float
  end
end
