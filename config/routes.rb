Rails.application.routes.draw do


  resources :users

  root 'welcome#index'

  get "/boxes" => redirect("http://tuskermarvel.com/boxes.json")

  get '/box_feed', to: 'box_contents#setup'

  get '/users/:id/next_package', to: 'users#next_package', as: 'next_package'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
