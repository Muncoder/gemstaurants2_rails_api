Rails.application.routes.draw do
  get 'stats' => 'stats#index'

  resources :orders, only: [:index]

  resources :tables, except: [:new, :edit] do
  	resources :orders, only: [:create] do #/tables/:id/orders
  		post :add, on: :member
  		post :pay, on: :member
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
