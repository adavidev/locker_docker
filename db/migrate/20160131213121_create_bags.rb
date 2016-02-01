class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.integer :height
      t.integer :width
      t.integer :depth
      t.belongs_to :locker
      t.belongs_to :ticket

      t.timestamps null: false
    end
  end
end
