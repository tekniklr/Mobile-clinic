class ContactsController < ApplicationController
  before_filter :setup_contact

  def new
    @contact = Contact.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if (Rails.env.development? || verify_recaptcha(:model => @contact, :message => "CAPTCHA incorrect")) && @contact.valid?
        ContactMailer.contact(@contact).deliver
        format.html { redirect_to contact_path, notice: 'Thank you for contacting us!' }
      else
        format.html { render action: "new" }
      end
    end
  end

  private
  
  def setup_contact
    @page_title = "Contact"
    blurb = Blurb.find_by_name("Contact")
    @contact_blurb = !blurb.blank? ? blurb.content : ''
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :content)
  end

end
