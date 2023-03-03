class RemoveForeignKey < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :books, :users
    remove_foreign_key :users, :books
  end
end
