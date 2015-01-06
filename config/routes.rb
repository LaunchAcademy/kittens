Rails.application.routes.draw do
  root "kittens#index"

  resources :kittens, only: [:index, :new, :create]
end
