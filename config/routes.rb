Rails.application.routes.draw do
  
  root 'operations#index'
  
  resources :operations do
    resources :cards
  end
end
