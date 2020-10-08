Rails.application.routes.draw do
  resources :dashboard

  devise_for :users

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'dashboard#index'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home' => 'pages#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  get 'services' => 'pages#services', as: 'services'
  get 'contact' => 'pages#contact', as: 'contact'

end
