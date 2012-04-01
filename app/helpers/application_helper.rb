module ApplicationHelper
  
  def blurb(raw_blurb)
    sanitize raw_blurb, :tags => %w(a strong em u br strike h1 h2 blockquote sup sub cite div span ol ul li p b i s img table td tr tbody thead th)
  end
  
  # haml ie/css hacks: https://github.com/sporkd/compass-html5-boilerplate/
  def ie_tag(name=:body, attrs={}, &block)
    attrs.symbolize_keys!
    haml_concat("<!--[if lt IE 7]> #{ tag(name, add_class('ie6', attrs), true) } <![endif]-->".html_safe)
    haml_concat("<!--[if IE 7]>    #{ tag(name, add_class('ie7', attrs), true) } <![endif]-->".html_safe)
    haml_concat("<!--[if IE 8]>    #{ tag(name, add_class('ie8', attrs), true) } <![endif]-->".html_safe)
    haml_concat("<!--[if gt IE 8]><!-->".html_safe)
    haml_tag name, attrs do
      haml_concat("<!--<![endif]-->".html_safe)
      block.call
    end
  end
  def ie_html(attrs={}, &block)
    ie_tag(:html, attrs, &block)
  end
  def ie_body(attrs={}, &block)
    ie_tag(:body, attrs, &block)
  end
  
  private

  def add_class(name, attrs)
    classes = attrs[:class] || ''
    classes.strip!
    classes = ' ' + classes if !classes.blank?
    classes = name + classes
    attrs.merge(:class => classes)
  end
  
end
