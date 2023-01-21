Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'pages/home'
  get 'pages/profile'

  resources :quizzes
  resources :questions, only: [:index], defaults: { format: :json }
  resources :trips do
    resources :attendees, only: [:new, :create, :update, :destroy]
    resources :messages, only: [ :create, :update, :destroy]
  end

  # resources :users do
    resources :user_flags, only: :create
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
