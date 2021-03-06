Rails.application.routes.draw do
  
  get 'usertracks/create'

  get 'usertracks/delete'

    root 'welcome#index'
    
    resources :users, only: [:index, :new, :create, :show, :edit, :update] do
        resources :tracks, only: [:index, :create]
    end
    
    resources :sessions, only: [:new, :create, :destroy]
    
    resources :tracks, only: [:index, :show, :destroy]
    # Create a better looking URL for logging in
    get '/login', to: 'sessions#new'
    get '/logout', to: 'welcome#index'
    
    resources :usertracks, only: [:create, :destroy]
    
    
    
    
#    Rails.application.routes.draw do

#      root "mumbles#index"
#
#      resources :users, only: [:new, :create, :show, :edit, :update] do
#        resources :mumbles, only: [:index, :create]
#      end
#
#      resource  :session, only: [:new, :create, :destroy]
#
#      resources :mumbles, only: [:index, :show, :destroy] do
#        resources :comments, only: [:create]
#      end
#
#      resources :comments, only: [:destroy]
#    end
    
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
