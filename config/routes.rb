Rails.application.routes.draw do

  # Rutas para polideportivos (incluye index, new, create)
  resources :polideportivos, only: [:index, :new, :create]

  # Rutas para canchas (solo index, new, create)
  resources :canchas, only: [:index, :new , :create]

  # Rutas para clientes (solo new y create)
  resources :clientes, only: [:new, :create]

  # Rutas para reservas (solo new y create)

  resources :polideportivos do
    resources :canchas
  end

  resources :polideportivos do
    resources :canchas do
      resources :reservas, only: [:index, :new, :create]
    end
  end

  resources :polideportivos, only: [:index, :show, :edit, :update]


  # Define la ruta raíz de la aplicación
  root 'polideportivos#index'
end
