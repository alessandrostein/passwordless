# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  passwordless_for :users, at: '/donors', as: :auth
  resources :registrations, only: %i[new create]

  get '/admin', to: 'admin/dashboard#index'
  get '/donor', to: 'donors/dashboard#index'
  root 'site#index'
end
