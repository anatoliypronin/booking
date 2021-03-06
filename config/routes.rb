Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :airports, only: [:index]
      resources :aircrafts, only: [:index]
      resources :tickets, only: %i[index create]
    end
  end
end
