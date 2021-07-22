class AddCategoriesToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_belongs_to :expenses, :category
  end
end
