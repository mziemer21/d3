DeweyDecibelDatabase::Application.routes.draw do
  
  get "add_user/addNewUser"

  root  'home_page#home'
  #match '/playlists',          to: "playlists#index",        via: 'get'
  match '/admin',              to: "admin_page#admin",                  via: 'get'
  match '/search',             to: "search_box#search",                 via: 'get'
  match '/add',                to: "add_box#addModal",                  via: 'get'
  match '/songInspect',        to: "song_inspect#songInspect",          via: 'get'
  match '/adminInspect',       to: "admin_inspect#adminInspect",        via: 'get'
  match '/adminInspectUp',     to: "admin_inspect#updatePrivilege",     via: 'get'
  match '/deleteConfirm',      to: "delete_user_conf#deleteConfirm",    via: 'get'
  match '/deletePlaylist',     to: "delete_playlist_conf#deleteConfirm",via: 'get'
  match '/showPlaylist',        to: "playlists#showBox",                 via: 'get'
  match '/songs',             to: "songs#index",                        via: 'get'
  match '/addUser',             to: "add_user#addNewUser",              via: 'get'
  match '/newPrivileges',       to: "add_user#addNewPrivileges",        via: 'get'
  
  match '/signout',            to: "sessions#destroy",          via: 'delete'

  match '/remove_song_from_playlist', to: "playlist_page#remove_song",  via: 'delete'
  
  resources :playlists

  resources :songs 

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
