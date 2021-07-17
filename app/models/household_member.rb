class HouseholdMember < ApplicationRecord
  before_destroy :has_at_least_one_admin?, prepend: true
  before_update :has_at_least_one_admin?, prepend: true

  private

  def has_at_least_one_admin?
    members = HouseholdMember.where(household_id: household_id)
    admins = members.where(admin: true)
    return if admins.size>1
    if admins[0].user_id == user_id
      self.errors.add(:base, "Needs to have at least one admin")
      throw :abort
    end
  end
end
