class CreatePlacements < ActiveRecord::Migration
  def change
    create_table :placements do |t|
      t.string :title
      t.string :description
      t.integer :admin_id

      t.timestamps null: false
    end
  end
end
