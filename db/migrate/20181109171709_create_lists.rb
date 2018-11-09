class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.text :excerpt
      t.text :description
      t.integer :upvotes

      t.timestamps null: false
    end
  end
end
