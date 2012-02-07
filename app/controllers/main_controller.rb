class MainController < ApplicationController
  caches_action   :index, :services, :forms, :op_instructions, :about, :donate, :contact, :layout => false
  
  def index
    blurb = Blurb.find_by_name("Home page")
    @home = !blurb.blank? ? blurb.content : ''
  end
  
  def forms
    @page_title = "Forms"
    blurb = Blurb.find_by_name("Forms")
    @forms = !blurb.blank? ? blurb.content : ''
  end
  
  def op_instructions
    @page_title = "Pre/Post Op"
    blurb = Blurb.find_by_name("Pre/Post Op")
    @op_instructions = !blurb.blank? ? blurb.content : ''
  end
  
  def about
    @page_title = "About"
    blurb = Blurb.find_by_name("About")
    @about = !blurb.blank? ? blurb.content : ''
  end
  
  def donate
    @page_title = "How can you help?"
    blurb = Blurb.find_by_name("How you can help")
    @donate = !blurb.blank? ? blurb.content : ''
  end
  
  def contact
    @page_title = "Contact"
    blurb = Blurb.find_by_name("Contact")
    @contact = !blurb.blank? ? blurb.content : ''
  end
  
end
