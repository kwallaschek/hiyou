class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.belongs_to :household
      t.integer :payer_id_1
      t.integer :amount_1
      t.integer :payer_id_2
      t.integer :amount_2
      t.integer :payer_id_3
      t.integer :amount_3
      t.integer :payer_id_4
      t.integer :amount_4
      t.integer :payer_id_5
      t.integer :amount_5
      t.integer :payer_id_6
      t.integer :amount_6
      t.integer :payer_id_7
      t.integer :amount_7
      t.integer :payer_id_8
      t.integer :amount_8
      t.integer :payer_id_9
      t.integer :amount_9
      t.integer :payer_id_10
      t.integer :amount_10
    end
  end
end
