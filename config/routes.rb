Rails.application.routes.draw do

  root to: 'blog/pages#home'
  
  namespace :author do
    resources :posts
  end  
  
  scope module: 'blog' do
    
    get 'impressum', to: 'pages#impressum'
    
    resources :contacts, only: :create
    get 'Kontakt_Formular', to: 'contacts#new', as: 'new_contact'
    
    get 'produkte', to: 'products#produkte'
    get 'sicherungsbrille', to: 'products#sicherungsbrille'
    get 'brillen_etui', to: 'products#brillen_etui'
    
    get 'stories', to: 'posts#index'
    get 'posts' => 'posts#index', as: :posts
    get 'posts/:id' => 'posts#show', as: :post
    
  end
  
  devise_for :users
  

end
