Rails.application.routes.draw do
  resources :artists do
  resources :songs, only: [:show,:index]
  end 
  resources :artists, only: [:index, :show, :new, :create, :edit, :update]
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]

  root 'songs#index'
  root 'songs#show'
end
