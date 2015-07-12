class AddFindingToItems < ActiveRecord::Migration
  def change
    add_column :items, :finding, :text
  end
end
