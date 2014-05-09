class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, limit: 128, null: false
      t.string :author, limit: 64, null: false
      t.text :description, null: false
      t.string :isbn, limit: 13, null: false
      t.string :image, null: false
      t.decimal :price, precision: 8, scale: 2, null: false
      t.date :publish_date, null: false
      t.integer :viewed, limit: 5, default: 0, null: false
      t.timestamps
    end
  end
end
