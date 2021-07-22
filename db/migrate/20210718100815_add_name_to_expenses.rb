class AddNameToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :name, :string
  end
end
