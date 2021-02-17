Rails.application.routes.draw do
  resources :houses, only: [:show] do
    resources :monsters, only: [:new, :create]
  end
  resources :monsters, only: [:destroy]
end
