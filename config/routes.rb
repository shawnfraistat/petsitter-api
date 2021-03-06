# frozen_string_literal: true

Rails.application.routes.draw do
  resources :messages
  resources :exchanges
  resources :favorites
  resources :sitters
  resources :clients
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  # patch '/change-password' => 'users#changepw'
  patch '/edit-profile' => 'users#edit_profile'
end
