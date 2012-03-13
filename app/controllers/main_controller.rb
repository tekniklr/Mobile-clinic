class MainController < ApplicationController
  caches_action   :index, :forms, :op_instructions, :about, :donate, :layout => false
  
  def index
    blurbleft = Blurb.find_by_name("Home left")
    blurbcenter = Blurb.find_by_name("Home center")
    blurbright = Blurb.find_by_name("Home right")
    @homeleft = !blurbleft.blank? ? blurbleft.content : ''
    @homecenter = !blurbcenter.blank? ? blurbcenter.content : ''
    @homeright = !blurbright.blank? ? blurbright.content : ''
  end
  
  def forms
    @page_title = "Forms"
    blurb = Blurb.find_by_name("Forms")
    @forms = !blurb.blank? ? blurb.content : ''
  end
  
  def op_instructions
    @page_title = "Pre/Post op"
    blurb = Blurb.find_by_name("Pre/Post Op")
    @op_instructions = !blurb.blank? ? blurb.content : ''
  end
  
  def about
    @page_title = "About us"
    blurb = Blurb.find_by_name("About")
    @about = !blurb.blank? ? blurb.content : ''
  end
  
  def donate
    @page_title = "How can you help?"
    blurb = Blurb.find_by_name("How you can help")
    @donate = !blurb.blank? ? blurb.content : ''
  end
  
end
