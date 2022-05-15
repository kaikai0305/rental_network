Rails.application.routes.draw do

  devise_for :admins,skip: [:registrations, :passwords] , controllers: {
  sessions: "admin/sessions"
}
  devise_for :customers, skip: [:passwords],  controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

   namespace :admin do
    root 'homes#top'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :rooms, only: [:index, :show, :edit, :new, :create, :update]
    resources :lendings, only: [:index, :show, :edit, :new, :create, :update]
    resources :reservations, only: [ :index, :show, :update]
  end

   scope module: :public do
    root 'homes#top'
    get 'about', to: 'homes#about'
    resource :customers, only: [:show,:edit, :update]
    get 'customers/unsubscribe' => 'customers#unsubscribe', as: 'unsubscribe'
    patch 'customers/out' => 'customers#out', as: 'out'
    post 'reservations/check'
    resources :reservations, only: [ :index, :show,:edit, :new, :create, :destroy]
    resources :rooms, only: [:index, :show]
    resources :lendings, only: [:index, :show]
   end

   get "search" => "searches#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
