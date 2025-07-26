Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "my_home_page#home"

  # users routes
  resources :users, only: [ :new, :create, :edit, :update, :show, :destroy ]

  # sessions routes
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"
  get "/logout", to: "sessions#destroy"

  get "/my_home_page", to: "my_home_page#home"
  get "my_home_page/home", to: "my_home_page#home"
  get "my_home_page/accounts", to: "my_home_page#accounts"
  get "my_home_page/transfer", to: "my_home_page#transfer"
  get "my_home_page/transactions", to: "my_home_page#transactions"
  get "my_home_page/currency", to: "my_home_page#currency"

  # accounts routes
  resources :bank_accounts, only: [ :new, :create, :edit, :update, :show, :destroy ]

  # bank_account routes
  get "/bank_accounts", to: "bank_accounts#index"
  # get "/bank_accounts/:id", to: "accounts#account_details"

  # transactions routes
  # resources :transactions, only: [ :new, :create, :edit, :update, :show, :destroy ]
  # get "/transactions", to: "transactions#index"

  get "my_home_page/contact", to: "my_home_page#contact"
  get "my_home_page/about", to: "my_home_page#about"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
