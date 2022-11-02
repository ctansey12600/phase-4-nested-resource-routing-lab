Rails.application.routes.draw do
  resources :users, only: [:show] do
    resources :items, only: %i[show index create]
  end

  resources :items, only: %i[index show create]
end
