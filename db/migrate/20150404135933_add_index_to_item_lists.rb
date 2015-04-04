class AddIndexToItemLists < ActiveRecord::Migration
  def change
      add_index :item_lists, [:list_id, :item_id], unique: true
  end
end
