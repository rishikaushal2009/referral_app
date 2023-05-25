Rails.application.routes.draw do
  get 'referral_emails/index'
  get 'referral_emails/create'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users
  resources :referral_emails, only: [:index, :create]
  root 'referral_emails#index'
end
