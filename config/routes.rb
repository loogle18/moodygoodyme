# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'home#show'

  get 'contacts', to: 'contacts#new'
  post 'contacts', to: 'contacts#create'
end
