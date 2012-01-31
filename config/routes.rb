MobileClinic::Application.routes.draw do
  root :to => 'main#index'
  
  # omniauth authentication
  match '/login'                   => 'sessions#login', :as => :login
  match "/auth/:provider/callback" => 'sessions#validate'
  match '/logout'                  => 'sessions#logout', :as => :logout
  match '/auth/failure'            => 'sessions#failure'
  
  # pages
  match '/services' => 'main#services', :as => :services
  match '/forms' => 'main#forms', :as => :forms
  match '/op_instructions' => 'main#op_instructions', :as => :op_instructions
  match '/about' => 'main#about', :as => :about
  match '/donate' => 'main#donate', :as => :donate
  match '/contact' => 'main#contact', :as => :contact
  
  resources :blurbs

  # https://github.com/rails/rails/issues/671
  # http://techoctave.com/c7/posts/36-rails-3-0-rescue-from-routing-error-solution
  match '*a', :to => "application#routing_error"
end
