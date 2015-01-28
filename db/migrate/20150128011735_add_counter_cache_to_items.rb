class AddCounterCacheToItems < ActiveRecord::Migration
  def change
    add_column :items, :upvotes_count, :integer, default: 0
  end
end
