class AddListIdToUpvotes < ActiveRecord::Migration
  def change
    add_column :upvotes, :list_id, :integer
  end
end
