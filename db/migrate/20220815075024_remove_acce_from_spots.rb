class RemoveAcceFromSpots < ActiveRecord::Migration[6.1]
  def change
    remove_column :spots, :acce, :text
  end
end
