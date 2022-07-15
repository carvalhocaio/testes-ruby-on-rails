Rails.application.routes.draw do
  resources :customers, except: %i[update destroy]
  root to: 'welcome#index'
end
