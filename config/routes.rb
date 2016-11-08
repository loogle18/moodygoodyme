# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'home#show'

  get 'contacts', to: 'contacts#new'
  post 'contacts', to: 'contacts#create'

  resources :books, only: :index

  get 'books/download/:name', to: 'books#download', as: :books_download
end
