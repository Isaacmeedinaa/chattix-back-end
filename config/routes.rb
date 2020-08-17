Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :messages, only: [:index, :create]
      resources :conversations, only: [:index, :create]

    end
  end
  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
