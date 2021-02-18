Rails.application.routes.draw do
  resources :houses, only: [:show] do
    resources :monsters, only: [:new, :create]
  end
  resources :monsters, only: [:destroy] do
    resources :monster_powers, only: [:new, :create]
  end
end

# form
# get 'monsters/:id/monster_powers/new'
# where the form gets sent
# post 'monsters/:id/monster_powers' # redirect_to house_path
