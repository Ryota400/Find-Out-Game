Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  root to: 'home#index'
  get 'home/show'
  resources :gamelists
end
