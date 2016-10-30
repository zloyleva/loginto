Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  match "/auth/:provider/callback" => "sessions#create", :via => [:get, :post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
