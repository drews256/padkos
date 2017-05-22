Rails.application.routes.draw do
  root 'home#index'
  resources :email_addresses
end
