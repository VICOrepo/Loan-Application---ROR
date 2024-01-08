Rails.application.routes.draw do
  resources :loans, only: [:new, :create]
  root 'loans#new'
end