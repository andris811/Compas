Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :update]

  root to: 'pages#home'
  get 'pages/home'
  get 'pages/about'

  resources :quizzes
  resources :questions, only: [:index], defaults: { format: :json }
  resources :trips do
    resources :attendees, only: [:new, :create, :update, :destroy]
    resources :messages, only: [ :create, :update, :destroy]
  end

  resources :user_flags, only: :create

  match 'users/:id' => 'users#show', via: :get
  # or
  get 'users/:id' => 'users#show'
  # or
end
