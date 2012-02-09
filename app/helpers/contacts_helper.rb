module ContactsHelper
  
  def req
    sanitize '<span class="required">*</span>', :tags => %w(span)
  end
end
