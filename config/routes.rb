Rails.application.routes.draw do

  root to: 'github/connectors#index'

  namespace :github do
    resources :connectors, only: %i[index create]
    get 'connectors/destroy'
    resources :repositories, only: %i[index show]
  end
end
