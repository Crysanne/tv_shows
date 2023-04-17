Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "index", to: "pages#index"
  get "tvshows", to: "tv_shows#index"
  get "show", to: "tv_shows#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tv_shows, only: [:index, :show] do
    resources :reviews, only: :create
  end
end
