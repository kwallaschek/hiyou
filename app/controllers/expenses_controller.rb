class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_expenses, only: 'index'


  def index

  end

  private

  def set_expenses
    @expenses = Expense.where(household_id: current_user.main_household)
  end
end
