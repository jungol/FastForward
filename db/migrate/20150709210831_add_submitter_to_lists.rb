class AddSubmitterToLists < ActiveRecord::Migration
  def change
    add_column :lists, :submitter, :integer
  end
end
