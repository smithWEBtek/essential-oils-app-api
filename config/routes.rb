Rails.application.routes.draw do

  namespace :api do
    resources :oil_med_props
    resources :medical_properties
    resources :oil_uses
    resources :uses
    resources :oils, except: [:new, :edit]
  end
end
