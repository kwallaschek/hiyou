class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_expenses, only: 'index'
  before_action :set_expense, only: 'show'
  before_action :only_household_member, only: 'show'

  def index

  end

  def show

  end

  private

  def only_household_member
    return if current_user.households.include?(@expense.household)
    redirect_to root_path, alert: "Not your Expense"
  end

  def set_expenses
    @expenses = Expense.eager_load(:user, :category).where(household_id: current_user.main_household)
  end

  def set_expense
    @expense = Expense.find(params[:id])
  end
end
