Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#root'
  namespace :api, defaults: {format: :json} do
    resource :session, only: [:new, :create, :destroy] 
    resources :users, only: [:create, :show, :edit] 
    resources :projects, only: [:create, :show, :index, :update] do 
      resources :items
      resources :comments, only: [:create, :show, :index]
    end 
    resource :likes, only: [:create, :destroy, :show]
  end 
end


