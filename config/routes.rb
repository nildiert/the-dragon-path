Rails.application.routes.draw do
  resources :resources
  resources :profiles
  resources :tasks
  resources :courses do
    resources :videos
  end

  resources :base_videos
  resources :base_courses
  root "home#index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
