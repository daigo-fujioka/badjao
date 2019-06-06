Rails.application.routes.draw do
root 'mains#index'
get 'mains' => 'mains#index'
get 'hiromu' => 'hiromus#index'
get 'tour' => 'tours#index'
get 'gallery' => 'gallerys#index'
post 'gallery' => 'gallerys#create'
get 'access' => 'accesss#index'
# namespace :api do
#     resources :gallerys, only: :index, defaults: { format: 'json' }
#   end
end
