class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :book, index: true
      t.string :author, limit: 64, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
