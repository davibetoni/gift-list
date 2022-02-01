Rails.application.routes.draw do
  root 'products#index'
  resources :products, only: %i[index new create show] do
    resources :payments, only: %i[new create show index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
