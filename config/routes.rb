Rails.application.routes.draw do

  devise_for :admins,skip: [:registrations, :passwords] , controllers: {
  sessions: "admin/sessions"
}
  devise_for :customers,skip: [:passwords],  controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

   namespace :admin do
    root 'homes#top'
    resources :rooms, only: [:index, :show, :edit, :new, :create, :update]
    resources :lendings, only: [:index, :show, :edit, :new, :create, :update]
  end

   scope module: :public do
    root 'homes#top'
    get 'about', to: 'homes#about'
    resource :customers, only: [:show, :edit, :update]
    get 'customers/unsubscribe' => 'customers#unsubscribe', as: 'unsubscribe'
    patch 'customers/out' => 'customers#out', as: 'out'
   end

   get "search" => "searches#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
