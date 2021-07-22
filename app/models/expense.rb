class Expense < ApplicationRecord
  belongs_to :household
  belongs_to :category
  belongs_to :user, class_name: 'User', foreign_key: 'payer_id_1'
end
