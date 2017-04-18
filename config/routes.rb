Rails.application.routes.draw do
  root to: 'pages#home'
  resources :stories
  get 'about', to: 'pages#about'
  get 'impressum', to: 'pages#impressum'
  #resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
