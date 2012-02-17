require 'spec_helper'

describe Support do

  def reset_support(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @support.destroy! if @support
    @support = Support.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_support
  end

  context "validations" do
    
    it "rejects empty title" do
      Support.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_support
      Support.new(@valid_attributes).should_not be_valid
    end
    
  end

end