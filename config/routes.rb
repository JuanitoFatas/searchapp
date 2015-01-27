Rails.application.routes.draw do
  get '/search', to: 'search#index', as: 'search'
  resources :authorships

  resources :authors

  resources :categories

  root to: 'search#index'
  resources :articles do
    collection { get :search }
  end
end
