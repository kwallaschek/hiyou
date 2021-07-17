class CreateHouseholdMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :household_members do |t|
      t.numeric :household_id
      t.numeric :user_id
      t.boolean :admin
      t.timestamps
    end
  end
end
