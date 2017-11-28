Rails.application.routes.draw do
  namespace :api do
    resources :oils
  end
end
