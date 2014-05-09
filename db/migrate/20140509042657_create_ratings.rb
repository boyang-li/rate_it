class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :book, index: true
      t.references :comment, index: true
      t.integer :rating, limit: 1
      t.timestamps
    end
  end
end
