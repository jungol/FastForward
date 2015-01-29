class AddUpvotesCountToLists < ActiveRecord::Migration
  def change
    add_column :lists, :upvotes_count, :integer
  end
end
