Rails.application.routes.draw do
  resources :customers, except: %i[destroy]
  root to: 'welcome#index'
end
