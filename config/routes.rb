Rails.application.routes.draw do
  resources :items, only: %i[index]

  resources :users, only: [:show] do
    resources :items, only: %i[show index create]
  end
end
