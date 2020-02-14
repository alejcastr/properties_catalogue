Rails.application.routes.draw do
  devise_for :users
  root to: "properties#index"
  resources :properties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
