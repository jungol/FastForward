class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :authors
      t.text :abstract
      t.string :url

      t.timestamps null: false
    end
  end
end
