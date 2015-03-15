class AddAbstractToItems < ActiveRecord::Migration
  def change
    add_column :items, :abstract, :text
  end
end
