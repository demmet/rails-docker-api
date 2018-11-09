class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :type
      t.string :name
      t.text :excerpt
      t.text :description
      t.string :url
      t.integer :upvotes

      t.timestamps null: false
    end
  end
end
