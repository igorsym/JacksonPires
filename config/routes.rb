Rails.application.routes.draw do
  resources :sessions
  resources :moderators
  resources :ratings
  resources :participations
  resources :requests
  resources :invitations
  resources :bans
  resources :reports
  resources :events
  resources :users

  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
