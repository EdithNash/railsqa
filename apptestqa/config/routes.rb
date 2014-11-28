Apptestqa::Application.routes.draw do
    #definir cuál será la página principal de nuestra aplicación web con el root
  root to: 'home#index'
  devise_for :users

  
  #le damos 1 nombre al espacio de trabajo privado
  namespace :admin do
    get '', to: 'dashboard#index', as: '/' 

    resources :classifications

    resources :components

    resources :enviroments

    resources :groups

    resources :indicators

    resources :proyects

    resources :statusqcs  

    resources :stages

    resources :values

    resources :typetests

    resources :severities

    resources :priorities

    resources :statusincidents

    resources :rvalidations

    resources :steps

    resources :testcases

    resources :incidents

    resources :sugestions    

    #get "Apptestqa/new_admin_stage" => 'Apptestqa#new_admin_stage', :as => :new_admin_stage
  end





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
