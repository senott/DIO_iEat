# frozen_string_literal: true

Rails.application.routes.draw do
  resources :products, only: %i[index new create]
  resources :restaurants
  devise_for :users
  root 'home#index'
end
