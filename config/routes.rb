Rails.application.routes.draw do
  resources :oil_med_props
  resources :medical_properties
  resources :oil_uses
  resources :uses
  namespace :api do
    resources :oils, except: [:new, :edit]
  end
end
