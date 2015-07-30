class AddDateToItems < ActiveRecord::Migration
  def change
    add_column :items, :publish_date, :string
  end
end
