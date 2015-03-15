class AddViewCountToLists < ActiveRecord::Migration
  def change
    add_column :lists, :view_count, :integer
  end
end
