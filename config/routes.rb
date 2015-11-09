Rails.application.routes.draw do
  root 'operations#index'
  resource :operations
end
