# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # passwordless_for :donors

  passwordless_for :donors, at: '/donors', as: :auth

  get '/admin', to: 'admin/dashboard#index'
  get '/donor', to: 'donors/dashboard#index'
  root 'site#index'
end
