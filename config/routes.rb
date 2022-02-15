Rails.application.routes.draw do
  resources :tasks
  resources :video_per_users
  resources :course_per_users
  resources :videos
  resources :courses
  root "home#index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
