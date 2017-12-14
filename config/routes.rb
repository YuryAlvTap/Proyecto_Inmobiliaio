Rails.application.routes.draw do
  resources :expenses
  resources :tipo_gastos
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :tipo_propiedads

  resources :propiedads

  resources :recintos do
     resources :propiedads
  end

  # get '/crea_propiedad/:id' => 'recintos#crea_propiedad', as: :crea_propiedad
  #get "pages/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  # Aqui se puede agregar la siguiente funcionalidad
  # resources :tipo_propiedads, only: [:new, :create]
end
