Rails.application.routes.draw do

  root 'home#index'

  devise_for :admins, :skip => [:registrations]

  get 'users/instantiate_user', to: 'users#instantiate_user', as: :instantiate_user
  get 'vehicles/instantiate_vehicle', to: 'vehicles#instantiate_vehicle', as: :instantiate_vehicle
  get 'vehicles/subtype_by_vehicle_classes', to: 'vehicles#subtype_by_vehicle_classes', as: :subtype_by_vehicle_classes
  resources :soats, only: [:new, :create, :show]
  resources :charges, only: [:new, :create]

  namespace :admin do
    resources :soats, only: [:index, :show]
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
