require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  
  def setup
    @contact = FactoryGirl.build(:contact)
  end

  should "validate presence of name" do
    @contact.name = nil
    assert !@contact.valid?
  end
  
  should "validate presence of email" do
    @contact.email = nil
    assert !@contact.valid?
  end
  
  should "validate format of email" do
    @contact.email = 'not an email'
    assert !@contact.valid?
  end
  
  should "validate presence of content" do
    @contact.content = nil
    assert !@contact.valid?
  end
  
end
