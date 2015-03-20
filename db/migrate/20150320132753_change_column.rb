class ChangeColumn < ActiveRecord::Migration
  
  def up
    change_column :lists, :description, :text
  end

  def down
    change_column :lists, :description, :string
  end

end