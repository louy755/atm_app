Rails.application.routes.draw do
  resources :user_infos
  resources :atm_maches
  devise_for :users
  root 'atm_maches#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
