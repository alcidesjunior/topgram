Rails.application.routes.draw do
  root "topfotos#index"
  resources :topfotos
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
