Rails.application.routes.draw do
  namesake :api
  namesake :v1
  resources :transactions
  resources :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
