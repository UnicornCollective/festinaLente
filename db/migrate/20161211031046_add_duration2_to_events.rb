class AddDuration2ToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :duration_dt, :datetime
  end
end
