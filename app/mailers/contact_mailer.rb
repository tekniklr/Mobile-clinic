class ContactMailer < ActionMailer::Base
  
  def contact(contact)
    @contact = contact
    mail(
      :to => Rails.env.development? ? 'apps@tekniklr.com' : 'Taylor Williams <drtsheltervet@gmail.com>',
      :from => "#{contact.name} <#{contact.email}>",
      :subject => "Contact form submitted (Flagstaff)"
    )
  end
  
end
