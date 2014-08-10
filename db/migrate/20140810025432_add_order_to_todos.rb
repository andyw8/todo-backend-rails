class AddOrderToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :order, :integer, default: 0
  end
end
