VerySimpleCms::Engine.routes.draw do
  # get "mercury/update"
  
  # namespace :admin do
  # get '/', to: 'base#index'
  # namespace :cms do
  resource :test, only: [ :edit ]
  # resources :pages do
  #   member { post :update_content }
  # end
  resource :content, only: [:update]
  # resource :mercuries, only: [ :update]
  # resource :mercury
  # mount Mercury::Engine => '/'

  # end
  # end
end
