class CreateCategorization < ActiveRecord::Migration
  def up
    create_join_table :books, :categories, table_name: :categorization
  end
end
