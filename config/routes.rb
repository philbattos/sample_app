SampleApp::Application.routes.draw do

  # get "users/new"

  root to: 'static_pages#home'

  # get "static_pages/home" ### maps the url to the "home" action in the static_pages_controller
                          ### this route responds to a GET request
                          ### this means that when we generate a "home" action inside static_pages_controller we automatically get a page at the address /static_pages/home

  # get "static_pages/help" ### maps the url to the "help" action in the static_pages_controller
                          ### this route responds to a GET request
                          ### this means that when we generate a "home" action inside static_pages_controller we automatically get a page at the address /static_pages/home
  match '/help',    to: 'static_pages#help'

  # get "static_pages/about"
  match '/about',   to: 'static_pages#about' ### arranges for a valid page at /help and a named route called help_path that returns the path to that page
    # "get" could be used in place of "match" but "match" is more conventional

  # get "static_pages/contact"
  match '/contact', to: 'static_pages#contact'

  match '/signup',  to: 'users#new'

  # "about_url" = http://example.com/about (returns full url instead of "about_path")

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
