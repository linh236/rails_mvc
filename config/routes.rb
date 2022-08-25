Rails.application.routes.draw do
  get 'dashboards/index', as: :dashboards
  resources :registrations, only: %i[new create]
  resources :logins, only: %i[new create]
  resources :posts, only: %i[index show new edit create update destroy]

  get "logout", to: "logins#logout"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboards#index"
end
