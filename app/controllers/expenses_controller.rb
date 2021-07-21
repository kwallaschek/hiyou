class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_expenses, only: 'index'
  before_action :set_expense, only: 'show'


  def index

  end

  def show
    
  end

  private

  def set_expenses
    @expenses = Expense.where(household_id: current_user.main_household)
  end

  def set_expense
    @expense = Expense.find(params[:id])
  end
end
