MobileClinic::Application.routes.draw do
  root :to => 'main#index'
  
  # omniauth authentication
  match '/login'                   => 'sessions#login', :as => :login
  match "/auth/:provider/callback" => 'sessions#validate'
  match '/logout'                  => 'sessions#logout', :as => :logout
  match '/auth/failure'            => 'sessions#failure'
  
  # pages
  match '/forms' => 'main#forms', :as => :forms
  match '/op_instructions' => 'main#op_instructions', :as => :op_instructions
  match '/about' => 'main#about', :as => :about
  match '/donate' => 'main#donate', :as => :donate
  match '/contact' => 'main#contact', :as => :contact
  match '/services' => 'services#index', :as => :services
  match '/vaccinations' => 'services#vaccinations', :as => :vaccinations
  match '/pricing' => 'services#pricing', :as => :pricing
  match '/mobile' => 'services#mobile', :as => :mobile
  
  resources :blurbs, :only => [:index, :show, :edit, :update]

  # https://github.com/rails/rails/issues/671
  # http://techoctave.com/c7/posts/36-rails-3-0-rescue-from-routing-error-solution
  match '*a', :to => "application#routing_error"
end
