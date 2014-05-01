DeweyDecibelDatabase::Application.routes.draw do
  
  get "admin_inspect/admin_insepect"
  get "album_inspect/albumInspect"
  get "album_inspect/songInspect"
  root  'home_page#home'
  match '/myplaylists',        to: "playlist_page#plists",        via: 'get'
  match '/admin',              to: "admin_page#admin",            via: 'get'
  match '/search',             to: "search_box#search",           via: 'get'
  match '/add',                to: "add_box#addModal",            via: 'get'
  match '/songInspect',        to: "song_inspect#songInspect",    via: 'get'
  match '/adminInspect',       to: "admin_inspect#adminInspect",  via: 'get'
  
  match '/signout',            to: "sessions#destroy",          via: 'delete'
  
  resources :playlists

  resources :songs do
    collection { 
      post :search, to: 'songs#index' 
      get :search, to: 'songs#index'
    }
  end

  resources :users

  resources :privileges

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
