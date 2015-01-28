class CreateUpvotes < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      t.integer :count
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
