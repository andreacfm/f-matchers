require "spec_helper"
require "support/rspec_f_matchers"

describe "rspec_f_matchers" do
    
  context "accept_nested_attributes_for" do
    
    it "should be true if model accept_nested_attributes_for the passed attribute" do
      Document.should accept_nested_attributes_for(:section)
    end    

    it "should be false if model accept_nested_attributes_for the passed attribute" do
      Document.should_not accept_nested_attributes_for(:users)
    end    
    
  end  
    
end  