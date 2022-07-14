Rails.application.routes.draw do
  resources :customers, only: %i[index new]
  root to: 'welcome#index'
end
