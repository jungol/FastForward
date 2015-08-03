class DropTaggingsTable < ActiveRecord::Migration
  def up
    drop_table :taggings
  end
  def down
    create_table :taggings
  end
end
