class AddSyllabusToItems < ActiveRecord::Migration
  def change
    add_column :items, :syllabus, :boolean, :default => false
  end
end
