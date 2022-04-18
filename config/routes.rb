Rails.application.routes.draw do
  resource :profile, only: %i[show edit update]
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only: [:show]

  root to: 'home#index'
  get 'home/show'
  resources :gamelists
  resources :search_games, only: [:index]
  get 'switch', to: 'search_games#switch'
  resources :pcgames do
    collection do
      get 'search'
    end
  end
end
