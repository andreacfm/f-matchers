# return true is the model accept nested attributes for the passed attribute
RSpec::Matchers.define :accept_nested_attributes_for do |attribute|
  match do |model|
    klazz = model.respond_to?(:new) ? model : model.class 
    klazz.nested_attributes_options.include? attribute
  end
end

# spec for attr_protected declarations
RSpec::Matchers.define :protect_attribute do |attribute|
  match do |model|
    klazz = model.respond_to?(:new) ? model : model.class 
    protected = klazz.protected_attributes
    protected.include? attribute if protected
  end
  failure_message_for_should do
    "#{subject.class} should protect attribute #{attribute.inspect}"
  end
  failure_message_for_should_not do
    "#{subject.class} should not protect attribute #{attribute.inspect}"
  end
end
