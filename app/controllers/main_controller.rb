class MainController < ApplicationController
  caches_action   :index, :forms, :op_instructions, :about, :donate, :layout => false
  
  def index
    blurbleft = Blurb.find_by_name("Home left")
    blurbcenter = Blurb.find_by_name("Home center")
    blurbright = Blurb.find_by_name("Home right")
    @homeleft = !blurbleft.blank? ? blurbleft.content : ''
    @homecenter = !blurbcenter.blank? ? blurbcenter.content : ''
    @homeright = !blurbright.blank? ? blurbright.content : ''
    @calendar_link = 'http://www.google.com/calendar/embed?src=lowcostspayneuteraz.org_fvu6nrd2e6l43ssan6ptob1snk%40group.calendar.google.com&ctz=America/FPhoenix'
    @map_link = 'http://maps.google.com/maps?f=q&source=embed&hl=en&geocode=&q=1707+E+Andy+Devine+Ave+Kingman,+AZ+86409&aq=&sll=35.192767,-114.034524&sspn=0.010346,0.01399&ie=UTF8&hq=&hnear=1707+E+Andy+Devine+Ave,+Kingman,+Arizona+86401&t=m&ll=35.192749,-114.034567&spn=0.010521,0.014935&z=14&iwloc=A'
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
