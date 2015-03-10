class AddCuratorToLists < ActiveRecord::Migration
  def change
    add_column :lists, :curator, :string
  end
end
