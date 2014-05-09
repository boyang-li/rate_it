class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :parent_id
      t.integer :top, limit: 1
      t.string :name, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
