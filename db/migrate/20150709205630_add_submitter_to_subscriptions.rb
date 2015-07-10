class AddSubmitterToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :submitter, :boolean
  end
end
