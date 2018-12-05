Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'index', to: 'application#_navigation', as: 'index'
  get 'editing' => 'users#edicao'

  get 'events/:id', to: 'events#show', as: 'event'
  get 'new_event', to: 'events#new', as: 'new_event'

  get 'new_rating', to: 'ratings#new', as: 'new_rating'
  get 'new_report', to: 'reports#new', as: 'new_report'

  resources :sessions
  resources :moderators
  resources :ratings
  resources :participations
  resources :requests
  #resources :invitations
  resources :bans
  resources :reports
  resources :events do
    resources :invitations
  end
  resources :users


  root 'application#_navigation'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
