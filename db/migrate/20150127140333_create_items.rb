class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :url
      t.string :description
      t.integer :votes

      t.timestamps null: false
    end
  end
end
