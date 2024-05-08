Rails.application.routes.draw do
  # Route to the 'past_inputs#index' action
  get 'past_inputs/index'

  # Define root route to 'sessions#login'
  root 'sessions#login'

  # Route to 'pages#index' with aliases '/home' and '/pages'
  get '/home', to: 'pages#index', as: 'home' 
  get '/pages', to: 'pages#index'
  
  # Redirect routes for easy, medium, and hard paths
  get '/easy', to: redirect('/ayeshahtmls/easy.html')
  get '/medium', to: redirect('/ayeshahtmls/medium.html')
  get '/hard', to: redirect('/ayeshahtmls/hard.html')

  # Health check route to verify application status
  get "up" => "rails/health#show", as: :rails_health_check

  # Resources routes for various data models
  resources :cardios, only: [:new, :create]
  resources :steps, only: [:new, :create]
  resources :water_intakes, only: [:new, :create]
  resources :calories, only: [:new, :create]
  resources :stretchings, only: [:new, :create]
  resources :treadmills, only: [:new, :create]
  resources :strengths, only: [:new, :create]
  resources :weights, only: [:new, :create]
  resources :heights, only: [:new, :create]
  resources :ages, only: [:new, :create]
  resources :runnings, only: [:new, :create]
  resources :runninggoals, only: [:new, :create]
  resources :sleepings, only: [:new, :create]
  resources :sleepinggoals, only: [:new, :create]
  resources :weightlosses, only: [:new, :create]
  resources :weightlossgoals, only: [:new, :create]

  # Explicit route for creating a new calorie entry
  get '/calories/new', to: 'calories#new', as: 'new_calorie'

  # Resources route for users with limited actions
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  # Routes for user login/logout
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
end
