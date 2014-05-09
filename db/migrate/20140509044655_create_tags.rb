class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :book, index: true
      t.string :name, limit: 32, null: false
      t.timestamps
    end
  end
end
