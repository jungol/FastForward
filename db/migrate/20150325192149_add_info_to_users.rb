class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :link, :string
    add_column :users, :school, :string
    add_column :users, :position, :string
  end
end
