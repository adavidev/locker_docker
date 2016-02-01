class CreateLockers < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.integer :height
      t.integer :width
      t.integer :depth

      t.timestamps null: false
    end
  end
end
