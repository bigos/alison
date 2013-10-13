class CreateEditablePages < ActiveRecord::Migration
  def change
    create_table :editable_pages do |t|
      t.string :window_title
      t.string :navbar_title
      t.integer :navbar_index
      t.text :content

      t.timestamps
    end
  end
end
