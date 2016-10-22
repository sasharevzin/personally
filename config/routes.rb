Rails.application.routes.draw do
  root to: 'home#index'

  match 'signup/:action' => 'signup#:action', as: 'signup', via: [:post, :get]

  resources :contacts
  resources :skills
  resources :projects
  resources :users
end
