class AddJournalToItems < ActiveRecord::Migration
  def change
    add_column :items, :journal, :string
  end
end
