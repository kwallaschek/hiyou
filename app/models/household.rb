class Household < ApplicationRecord
  has_many :expenses
  has_many :household_members
  has_many :user, through: :household_members
  def add_member(user_id, admin)
    HouseholdMember.create!(user_id: user_id, household_id: id, admin: admin)
  end

  def remove_member(user_id)
    HouseholdMember.where(user_id: user_id, household_id: id).destroy_all
  end
end
