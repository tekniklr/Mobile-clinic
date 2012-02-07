class ServicesController < ApplicationController

  def index
    @page_title = "Services"
    blurb = Blurb.find_by_name("Services")
    @services = !blurb.blank? ? blurb.content : ''
  end
  
  def vaccinations
    @page_title = "Vaccinations"
    blurb = Blurb.find_by_name("Vaccinations")
    @vaccinations = !blurb.blank? ? blurb.content : ''
  end
  
  def pricing
    @page_title = "Surgery pricing"
    blurb = Blurb.find_by_name("Pricing")
    @pricing = !blurb.blank? ? blurb.content : ''
  end
  
  def mobile
    @page_title = "Mobile"
    blurb = Blurb.find_by_name("Mobile")
    @mobile = !blurb.blank? ? blurb.content : ''
  end

end
