class CreateHouseholdMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :household_members do |t|
      t.belongs_to :household
      t.belongs_to :user
      t.boolean :admin
      t.timestamps
    end
  end
end
