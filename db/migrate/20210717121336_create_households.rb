class CreateHouseholds < ActiveRecord::Migration[6.0]
  def change
    create_table :households do |t|
      t.string :name
      t.numeric :household_member_id
      t.timestamps
    end
  end
end
