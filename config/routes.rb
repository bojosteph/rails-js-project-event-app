Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
    get '/signin', to:  'devise/sessions#create' , as: :signin
    get 'signup' , to:  'devise/registrations#new', as: :signup
  end
  
  root :to => 'home#index'
end
