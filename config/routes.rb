Rails.application.routes.draw do
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  devise_for :users
  resources :households
  resources :expenses
  get '/new_expense_modal', to: 'households#new_expense_modal', as: :new_expense_modal
  resources :dashboard

end
