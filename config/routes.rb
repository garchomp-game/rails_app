Rails.application.routes.draw do
  resources :fan_comments
  resources :reviews
  resources :authros
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
