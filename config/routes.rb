B1::Application.routes.draw do
  match ':controller(/:action(/:id))(.:format)'

  match '/logout' => 'sessions#destroy', :as => 'logout'

  match '/auth/failure' => 'sessions#failure'

  match '/auth/:provider/callback' => 'sessions#create'

  match ':new_display_articles' => 'new_articles#new_display_articles'


  resources :sessions

  resources :identities

  root :to => 'mindapp#index'
    resources :articles do
    resources :comments
  end
  resources :comments
  resources :new_articles

  resources :articles do
    resources :comments
  end



end
