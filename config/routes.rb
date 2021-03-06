Rails.application.routes.draw do

  get 'users/current'
  put 'users/:id/role' => 'users#role'
  get 'permissions' => 'users#no_permissions'
  resources :users
  get 'signin' => 'sessions#signin'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :delete]

  resources :sessions, only: [:create, :destroy]

  resources :registrations, except: [:new]

  get 'admin' => 'static#admin', as: :admin
  get 'home' => 'static#home'
  get 'about' => 'static#about', as: :about
  get 'registration' => 'registrations#new', as: :new_registration
  get 'schedule' => 'static#schedule', as: :schedule
  get 'speakers' => 'static#speakers', as: :speakers

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static#home'

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
