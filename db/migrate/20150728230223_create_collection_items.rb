class CreateCollectionItems < ActiveRecord::Migration
  def change
    create_table :collection_items do |t|
      t.integer :collection_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
