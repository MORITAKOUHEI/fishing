class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|

      t.string :post_name
      t.string :address
      t.text   :caught_fish
      t.text   :access

      t.timestamps
    end
  end
end
