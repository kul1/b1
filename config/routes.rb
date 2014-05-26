B1::Application.routes.draw do
  match ':controller(/:action(/:id))(.:format)'

  match '/logout' => 'sessions#destroy', :as => 'logout'

  match '/auth/failure' => 'sessions#failure'

  match '/auth/:provider/callback' => 'sessions#create'

  resources :sessions

  resources :identities

  root :to => 'mindapp#index'
    resources :articles do
    resources :comments
  end

end
