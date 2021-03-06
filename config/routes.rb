Guiav::Application.routes.draw do
  resources :users

  resources :laboratorios, path: "admin/laboratorios"
  resources :administradors


  post "/payment_notifications" => 'payment_notification#create'

  post "/valid_login" => "static_pages#login"
  get "static_pages/index"
  get "static_pages/index2"
  get "index/welcome"
  get "/about" => 'static_pages#about'
  get "/search" => 'search_medicaments#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#index2'

  # Sesiones
  resources :sessions, only: [:admin_login, :admin_create, :admin_destroy]
  controller :sessions do
    get 'admin/login' => :admin_login
    post 'admin/login' => :admin_create
    delete 'admin/logout' => :admin_destroy
    get 'admin/logout' => :admin_destroy
    post 'login' => :user_create
    get 'logout' => :user_destroy
  end

  # Administrator Pages
  controller :administrator_pages do
    get 'admin' => :home
  end

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
