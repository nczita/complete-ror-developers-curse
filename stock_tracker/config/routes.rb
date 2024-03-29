Rails.application.routes.draw do
  resources :user_stocks, only: %i[create destroy]
  devise_for :users

  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'

  get 'my_friends', to: 'users#my_friends'
  get 'search_friends', to: 'users#search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
