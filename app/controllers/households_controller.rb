class HouseholdsController < ApplicationController
  before_action :set_household, only: [:show, :destroy]
  before_action :reject_if_non_member, only: [:show, :destroy]

  def create
    @household = Household.new(name: params[:name])
    @household.add_member(current_user.id, true)
    redirect_to households_path(@household)
  end

  def destroy
    HouseholdMember.where(household_id: id).delete_all
    @household.destroy
    redirect_to households_path
  end

  def show

  end

  def new_expense_modal
    @expense = Expense.new
    @expense.household = Household.find(current_user.main_household)
    @expense.amount = params[:amount]
    @expense.payer_id_1 = params[:mainPayer]
    @expense.date = params[:date]
    @expense.name = params[:name]
    @expense.save!
    render json: {status: 200}

  end

  def index
    @households = Household.joins("INNER JOIN household_members ON household_members.household_id = households.id WHERE household_members.user_id = #{current_user.id}")
  end

  private

  def reject_if_non_member
    member = HouseholdMember.where(household_id: @household.id, user_id: current_user.id).last
    redirect_to root_path unless member
  end

  def set_household
    @household = Household.find(1)
  rescue
    flash[:alert] = "Not found"
    redirect_to root_path
  end
end
