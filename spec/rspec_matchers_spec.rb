require "spec_helper"

describe "rspec_f_matchers" do
  
  subject{Document}
    
  context "accept_nested_attributes_for" do   
    it { should accept_nested_attributes_for(:section) }
    it { should_not accept_nested_attributes_for(:users) }
  end  

  context "protect_attribute" do  
    it { should protect_attribute(:protect_me) }
    it { should_not protect_attribute(:do_not_protect_me) }
  end  
    
end  