class AddImageUrlToLists < ActiveRecord::Migration
  def change
    add_column :lists, :image_url, :string
  end
end
