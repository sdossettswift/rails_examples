Rails.application.routes.draw do

  # method | url | controller#action
  get 'contact' => 'pages#contact'
  get 'legal' => 'pages#legal'
  get 'about' => 'pages#about'   # => app/views/pages/about.html.erb
  root 'pages#index' # => 'app/views/pages/index.html'

  get 'products' => 'products#list'
  get 'products/:id' => 'products#detail' # => app/views/products/detail.html.erb

  # params = {
  #   id: 'bike'
  #   controller: 'products',
  #   action: 'detail'
  # }

  get 'team' => 'team#list'
  get 'team/:id' => 'team#detail'




  # elsif route.match('products/:id')
    # html = ProductsController.new().detail
  #   send_to_user(html)
  # end


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
