Rails.application.routes.draw do
  get 'root/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  namespace :api do
    namespace :v1 do
      resources :message
    end
  end
  
  get '/greeting_message', to: 'message#greeting_message'
  root "root#index"
end
