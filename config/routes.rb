Rails.application.routes.draw do
  root to: 'titles#index', root: ''
  resources :titles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
