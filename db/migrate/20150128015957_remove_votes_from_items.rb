class RemoveVotesFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :votes, :integer
  end
end
