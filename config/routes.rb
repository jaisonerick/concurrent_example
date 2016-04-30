Rails.application.routes.draw do
  resources :users, only: [:show, :index] do
    member do
      resources :credits, only: :create
    end
  end
end
