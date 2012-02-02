module ApplicationHelper
  
  def blurb(raw_blurb)
    sanitize raw_blurb, :tags => %w(a strong em u br cite span ol ul li p b i)
  end
    
end
