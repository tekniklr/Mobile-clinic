require 'test_helper'

class BlurbTest < ActiveSupport::TestCase

  def setup
    @blurb = FactoryGirl.build(:blurb)
  end

  should "validate presence of name" do
    @blurb.name = nil
    assert !@blurb.valid?
  end
  
  should "validate size of name" do
    @blurb.name = '012345678901234567890123456789012345678901234567890123456789012345678901234567890'
    assert !@blurb.valid?
  end
  
  should "validate uniqueness of name" do
    blurb1 = FactoryGirl.create(:blurb, :name => 'some name')
    blurb2 = FactoryGirl.build(:blurb, :name => 'some name')
    assert !blurb2.valid?
  end

end
