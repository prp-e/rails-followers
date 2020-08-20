Rails.application.routes.draw do
  devise_for :users

  resources :profile do
    resources :relationships
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
