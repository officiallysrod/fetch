Rails.application.routes.draw do

  root 'welcome#index'

  resources :users, except: [:new]
  resources :matches, only: [:index, :show, :new, :create, :destroy]
  resources :likes, only: [:new, :create]
  resources :rejections, only: [:new, :create]
  

  scope '/api' do
    resources :users, only: [:index, :show], defaults: { format: :json }
    resources :matches, only: [:index, :show], defaults: { format: :json }
    resources :likes, only: [:new, :create], defaults: { format: :json }
    resources :rejections, only: [:new, :create], defaults: { format: :json }
  end

  resource :session, only: [:create, :destroy]
  resources :usermatches, only: [:new, :create, :destroy]

  resources :inquiries, only: [:new, :create] do 
    get 'thank_you', :on => :collection
  end

  #=========================================================

  # :on collection and :on => member are the style of route they produce and their associated route helpers.
  # for example resources :posts
  #    :on collection
  # get 'search', on: :collection 
  # --> generates '/posts/search' and search_posts_path

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
