Rails.application.routes.draw do
  resources :authors
  resources :videos
  resources :games
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
