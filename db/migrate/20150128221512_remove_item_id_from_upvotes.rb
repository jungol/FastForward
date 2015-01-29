class RemoveItemIdFromUpvotes < ActiveRecord::Migration
  def change
    remove_column :upvotes, :item_id, :integer
  end
end
