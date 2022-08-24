Rails.application.routes.draw do
  root 'homepage#index'
  resources :products, only: %i[index] do
    resources :payments, only: %i[new create show]
  end

  namespace 'api' do
    namespace 'v1' do
  		resources :products, only: %i[index create]
  	end
  end
end
