Rails.application.routes.draw do
  root to: 'sites#index'
  namespace :api do
    namespace :v1 do  
      resources :items, only: [:index, :create, :destroy, :update]
    end
  end
end
