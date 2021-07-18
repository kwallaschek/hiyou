class AddMainHouseholdToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :main_household, :integer
  end
end
