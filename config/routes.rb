Rails.application.routes.draw do
  resources :reviews
  resources :base_tasks
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
  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
