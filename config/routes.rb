# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'home#show'

  resources :contacts, only: :index
end
