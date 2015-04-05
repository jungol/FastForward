class CreateListCollections < ActiveRecord::Migration
  def change
    create_table :list_collections do |t|
      t.integer :list_id
      t.integer :collection_id

      t.timestamps null: false
    end
  end
end
