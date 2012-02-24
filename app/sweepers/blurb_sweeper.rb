class BlurbSweeper < ActionController::Caching::Sweeper
  observe Blurb
  
  def after_update(blurb)
    expire_cache_for(blurb)
  end
  
  private
  
  def expire_cache_for(blurb)
    expire_action  :controller => 'main', :action => 'index'
    expire_action  :controller => 'main', :action => 'forms'
    expire_action  :controller => 'main', :action => 'op_instructions'
    expire_action  :controller => 'main', :action => 'about'
    expire_action  :controller => 'main', :action => 'donate'
    expire_action  :controller => 'services', :action => 'index'
    expire_action  :controller => 'services', :action => 'vaccinations'
    expire_action  :controller => 'services', :action => 'pricing'
    expire_action  :controller => 'services', :action => 'mobile'
  end
  
end