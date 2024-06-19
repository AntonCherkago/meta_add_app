Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # # Defines the root path route ("/")
  # # root "posts#index"
  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  # delete 'logout', to: 'sessions#destroy'
  # get 'dashboard', to: 'dashboard#index'
  # get '/connect_facebook_ads', to: 'facebook_ads#connect'
  # get '/auth/facebook', to: 'facebook_ads#callback'
  # root 'pages#home'


  root 'home#index'

  # get 'auth/facebook', as: "auth_provider"
  # get 'auth/facebook/callback', to: 'users#login'


  # get '/auth/facebook/callback', to: 'facebook_ads#callback'
  # get '/connect_facebook_ads', to: 'facebook_ads#connect'

  authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end

  resources :users, only: [:show] do
    get 'profile', on: :member
  end

end
