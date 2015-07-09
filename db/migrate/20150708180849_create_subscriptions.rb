class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :list_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :subscriptions, :user_id
    add_index :subscriptions, :list_id
    add_index :subscriptions, [:user_id, :list_id], unique: true
  end
end
