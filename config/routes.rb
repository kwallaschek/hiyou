Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  devise_for :users
  resources :households
  get '/new_expense_modal/:id', to: 'households#new_expense_modal', as: :new_expense_modal

end
