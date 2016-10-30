Rails.application.routes.draw do
  get 'home/index'
  get 'home/profile'

  root 'home#index'

  match "/auth/:provider/callback" => "sessions#create", :via => [:get, :post]
  match "/signout" => "sessions#destroy", :as => :signout, :via => [:delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
