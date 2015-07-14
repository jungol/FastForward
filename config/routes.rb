Sylaby::Application.routes.draw do





  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  resources :recommendations
  resources :users, only: [:show]
  resources :lists
  resources :collections
  resources :items, only: [:show]
  resources :subscriptions, only: [:create, :destroy, :index]
  root to: 'lists#index'
  get 'tags/:tag', to: 'lists#index', as: :tag
  get 'static_pages/design'
  get 'static_pages/design2'
  get 'static_pages/design3'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/confirm'
  get 'static_pages/microfinance'
  get 'static_pages/technologyofmicrofinance'
  get 'static_pages/groupreputation'
  get 'static_pages/microcreditsavings'
  get 'static_pages/tdesign'
  get 'static_pages/mfi'
  get 'static_pages/impactofmicrofinance'
  get 'static_pages/health'
  get 'static_pages/growth'
  get 'static_pages/education'
  get 'static_pages/contributors'
  get 'static_pages/history'
  get 'static_pages/search'
  get 'static_pages/foreignaid'
  get 'static_pages/propertyrights'
  get 'static_pages/people'
  resources :email_signups
  # get 'tags/*tags', to: 'lists#index', as: :tag


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
