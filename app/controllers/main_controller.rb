class MainController < ApplicationController
  
  def index
    blurbleft = Blurb.find_by_name("Home left")
    blurbcenter = Blurb.find_by_name("Home center")
    blurbright = Blurb.find_by_name("Home right")
    @homeleft = !blurbleft.blank? ? blurbleft.content : ''
    @homecenter = !blurbcenter.blank? ? blurbcenter.content : ''
    @homeright = !blurbright.blank? ? blurbright.content : ''
    @calendar_link = 'http://www.google.com/calendar/embed?src=lowcostspayneuteraz.org_fvu6nrd2e6l43ssan6ptob1snk%40group.calendar.google.com&ctz=America/FPhoenix'
    @map_link = 'https://www.google.com/maps/place/2231+E+7th+Ave,+Flagstaff,+AZ+86004/@35.2116688,-111.6121022,17z/data=!3m1!4b1!4m2!3m1!1s0x872d8ed0b3f43803:0xdf74011b5f38fe64?hl=en'
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
