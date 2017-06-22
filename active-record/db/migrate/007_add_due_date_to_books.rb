class AddDueDateToBooks < ActiveRecord::Migration
  def change
    add_column :books, :due_date, :string
  end
end
