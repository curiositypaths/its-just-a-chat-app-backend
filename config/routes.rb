Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/messages', to:'messages#create'
      patch '/messages/:id', to:'messages#update'
      get '/messages', to:'messages#index'
    end
  end
end
