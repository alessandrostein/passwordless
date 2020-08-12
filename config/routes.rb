# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  passwordless_for :donors, at: '/donors', as: :auth

  get '/admin', to: 'admin/dashboard#index'
  get '/donor', to: 'donors/dashboard#index'
  root 'site#index'
end
