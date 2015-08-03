class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :tag_id
      t.belongs_to :taggable, polymorphic: true
      t.timestamps null: false
    end
    add_index :taggings, [:taggable_id, :taggable_type]
  end
end
