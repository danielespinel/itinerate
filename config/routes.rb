Rails.application.routes.draw do
  resources :invitations
  resources :attendances
  resources :comments
  resources :activities
  resources :trips
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
