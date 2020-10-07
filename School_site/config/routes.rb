Rails.application.routes.draw do
  resources :dashboard

  devise_for :users

  root to: 'dashboard#index'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home' => 'pages#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  get 'services' => 'pages#services', as: 'services'
  get 'contact' => 'pages#contact', as: 'contact'

end
