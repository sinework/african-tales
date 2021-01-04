Rails.application.routes.draw do

  
  resources :articles, only:[:create, :new , :index] do
    resources :votes, only: [:create, :destroy]
  end
  resources :categories, only: [:show]
  resources :users, only:[:new, :create]
  root to: 'articles#index'
 
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
