Rails.application.routes.draw do
  devise_for :users
  root to: "experiences#index"
  resources :experiences do
    resources :experience_comments, only: [:create, :edit, :update, :destroy]
    resources :experience_likes, only: [:create, :update]
    collection do
      get 'search_tag'
      get 'search_article'
    end
    member do
      get 'search_tag'
    end
  end
  resources :users, only: [:show]
end
