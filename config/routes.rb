MobileClinic::Application.routes.draw do
  root :to => 'main#index'
  
  # omniauth authentication
  get '/login',                   to: 'sessions#login', :as => :login
  get "/auth/:provider/callback", to: 'sessions#validate'
  get '/logout',                  to: 'sessions#logout', :as => :logout
  get '/auth/failure',            to: 'sessions#failure'
  
  # pages
  get '/forms',           to: 'main#forms', :as => :forms
  get '/op_instructions', to: 'main#op_instructions', :as => :op_instructions
  get '/about',           to: 'main#about', :as => :about
  get '/donate',          to: 'main#donate', :as => :donate
  get '/services',        to: 'services#index', :as => :services
  get '/vaccinations',    to: 'services#vaccinations', :as => :vaccinations
  get '/pricing',         to: 'services#pricing', :as => :pricing
  get '/mobile',          to: 'services#mobile', :as => :mobile
  get '/contact',         to: 'contacts#new', :as => :contact
  
  resources :blurbs,   :only => [:index, :show, :edit, :update]
  resources :contacts, :only => [:create]
  resources :users,    :only => [:index, :edit, :update, :destroy]

  # https://github.com/rails/rails/issues/671
  # http://techoctave.com/c7/posts/36-rails-3-0-rescue-from-routing-error-solution
  match '*a', :to => "application#routing_error", :via => :get
end
