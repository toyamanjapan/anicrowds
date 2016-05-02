Rails.application.routes.draw do
devise_for :companies, controllers: {
  sessions:      'companies/sessions',
  passwords:     'companies/passwords',
  registrations: 'companies/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
root to: "projects#index"
resources :projects, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
  resources :concepts, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
      resources :reviews, only: [:index, :show, :new, :create, :destroy, :edit, :update]
      resources :rates, only: [:index, :show, :new, :create, :destroy, :edit, :update]
    end
end

resources :companies, only: [:show]
resources :users, only: [:show]
end
