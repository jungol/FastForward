class AddSourcesToLists < ActiveRecord::Migration
  def change
    add_column :lists, :sources, :string
  end
end
