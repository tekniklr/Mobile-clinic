class MainController < ApplicationController
  caches_action   :index, :services, :forms, :op_instructions, :about, :donate, :contact, :layout => false
  
  def index
    blurb = Blurb.find_by_name("Home page")
    @home = !blurb.blank? ? blurb.content : ''
  end
  
  def services
    blurb = Blurb.find_by_name("Services")
    @services = !blurb.blank? ? blurb.content : ''
  end
  
  def forms
    blurb = Blurb.find_by_name("Forms")
    @forms = !blurb.blank? ? blurb.content : ''
  end
  
  def op_instructions
    blurb = Blurb.find_by_name("Pre/Post Op")
    @op_instructions = !blurb.blank? ? blurb.content : ''
  end
  
  def about
    blurb = Blurb.find_by_name("About")
    @about = !blurb.blank? ? blurb.content : ''
  end
  
  def donate
    blurb = Blurb.find_by_name("How you can help")
    @donate = !blurb.blank? ? blurb.content : ''
  end
  
  def contact
    blurb = Blurb.find_by_name("Contact")
    @contact = !blurb.blank? ? blurb.content : ''
  end
  
end
