class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.references :list, index: true
      t.references :item, index: true
      t.text :description
      t.integer :position

      t.timestamps null: false
    end
    add_foreign_key :list_items, :lists
    add_foreign_key :list_items, :items
  end
end
