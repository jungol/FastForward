class AddSubtitleToLists < ActiveRecord::Migration
  def change
    add_column :lists, :subtitle, :text
  end
end
