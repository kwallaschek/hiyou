class CreateHouseholds < ActiveRecord::Migration[6.0]
  def change
    create_table :households do |t|
      t.string :name
      t.integer :household_member_id
      t.timestamps
    end
  end
end
