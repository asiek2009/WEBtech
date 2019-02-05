Rails.application.routes.draw do

  get 'javalabs/new'

  get 'javalabs/create'

  get 'javalabs/destroy'

  get 'javalabs/index'

  get 'javalectures/new'

  get 'javalectures/create'

  get 'javalectures/destroy'

  get 'javalectures/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'tutorials/index'

  get 'contact/index'
  resources :contact
  resources :tutorials
  resources :admin

  
  get 'projects/index'

  get 'projects/new'

  get 'projects/create'

  get 'projects/destroy'

  get 'lectures/index'

  get 'lectures/new'

  get 'lectures/create'

  get 'lectures/destroy'

  get 'labs/new'

  get 'labs/index'

  get 'labs/create'

  get 'labs/destroy'

  resources :labs
  resources :lectures
  root 'home#index'
#  get 'admin/index'

#  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users

  get 'admin' => 'admin#idex'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
 resources :labs, only: [:index, :new, :create, :destroy]
 resources :lectures, only: [:index, :new, :create, :destroy]
 resources :projects, only: [:index, :new, :create, :destroy]
   resources :javalectures, only: [:index, :new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


 