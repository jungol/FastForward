class AddCuratorUrlToLists < ActiveRecord::Migration
  def change
    add_column :lists, :curator_url, :string
  end
end
