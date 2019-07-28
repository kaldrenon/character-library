# frozen_string_literal: true

Rails.application.routes.draw do
  get 'landing/index'
  root to: 'landing#index'
  scope 'api' do
    resources :character
  end

  get '*path', to: 'landing#index'
end
