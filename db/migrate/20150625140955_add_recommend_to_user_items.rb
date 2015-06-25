class AddRecommendToUserItems < ActiveRecord::Migration
  def change
    add_column :user_items, :recommend, :boolean, :default => false
  end
end
