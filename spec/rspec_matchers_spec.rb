require "spec_helper"
require "ostruct"

describe "rspec_f_matchers" do

  context "accept_nested_attributes_for" do
    subject { Document }
    it { should accept_nested_attributes_for(:section) }
    it { should_not accept_nested_attributes_for(:users) }
  end

  context "protect_attribute" do
    subject { Document }
    it { should protect_attribute(:protect_me) }
    it { should_not protect_attribute(:do_not_protect_me) }
  end

  context "prepend_view_path_with" do
    before do
      @receiver = Object.new
      @receiver.stub(:view_paths){ OpenStruct.new paths: ['path_1'] }
    end
    subject{ @receiver }
    it { should prepend_view_path_with('path_1') }
    it { should_not prepend_view_path_with('path_2') }
  end

end  