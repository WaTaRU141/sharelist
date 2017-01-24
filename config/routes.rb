Rails.application.routes.draw do
  # get 'shareditem/index'

  # get 'shareditem/edit'

 resources :shareditem, only: [:index, :show, :edit]

  get 'matchings/resouces'

  get 'matchings/index' 

  get 'matchings/create'

  get 'matchings/show'

  get 'matchings/new'

  get 'matchings/edit'

  get 'matchings/update'

  get 'matchings/destroy'

  get 'shared_request/index'

  get 'shared_riquest/index'

  # get 'requests/index'

  # get 'requests/create'

  # get 'requests/show'

  # get 'requests/new'
  resources :requests, only: [:index, :create, :show, :new]

  get 'mypage/show'

  get 'item_image/new'

  get 'item_image/create'

  get 'item_image/update'

  get 'item_image/delate'

  get 'item_images/new'

  get 'items/create'

  devise_for :users, :controllers => {
 :registrations => 'users/registrations',
 :sessions => 'users/sessions'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'root#index'
# get 'items', to: 'items#index'
# get 'items/id' to: 'items#show'
# get 'items/new' to: 'items#new'
# get 'items/edit' to: 'items#edit'
resources :users, only: [:index, :show, :edit, :update] do
  resources :relationships, only: [:create, :destroy]
  get :holders, on: :member
  get :request_users, on: :member
end

resources :user_favorites, only: [:index]

resources :items do
resources :favorites, only: [ :create, :destoroy]
resources :relationships, only: [:create,:update]
end





root 'items#index'


# get 'share_requests' to: 'share_requests#index'
resources :share_requests, only: [:index]

get 'mypage/profile', to: 'users#show'
get 'users/:id', to: 'users#show'
get 'shared_users', to: 'shared_users#index'
get 'mypage', to: 'mypage#index'

end
