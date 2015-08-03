class RemoveTagsFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :tag, :string
  end
end
