class AddReturnedColumn < ActiveRecord::Migration
  def change
    add_column :user_books, :returned, :boolean
  end
end
