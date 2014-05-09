class CreateCategorization < ActiveRecord::Migration
  def up
    drop_table :categorization

    create_join_table :books, :categories, table_name: :categorization
  end

  def down
    drop_table :categorization
  end
end
