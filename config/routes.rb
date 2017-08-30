Rails.application.routes.draw do

  devise_for :users
  get 'comments/create'
  post 'comments/create'
  
  get 'comments/destroy/:comment_id/' => 'comments#destroy'
  post 'comments/destroy/:comment_id/' => 'comments#destroy'
  
  get 'questions/create'
  post 'questions/create'
  
  
  get 'questions/new'
  post 'questions/new'

  get 'questions/index'
  
  #댓글 입력할떄 쓰는 form 태그의 action 라우팅
  post 'comments/create/:question_id' => 'comments#create'
  
  
  get 'destroy/:question_id' => 'questions#destroy'
  
  get 'edit/:question_id' => 'questions#edit'
  post 'edit/:question_id' => 'questions#edit'
  
  post 'questions/update/:question_id' => 'questions#update'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'questions#index'

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
