class CreateItemLists < ActiveRecord::Migration
  def change
    create_table :item_lists do |t|
      t.integer :item_id
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
