class MainController < ApplicationController
  caches_action   :index, :services, :forms, :op_instructions, :about, :donate, :contact, :layout => false
  
  def index
  end
  
  def services
  end
  
  def forms
  end
  
  def op_instructions
  end
  
  def about
  end
  
  def donate
  end
  
  def contact
  end
  
end
