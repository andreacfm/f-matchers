# return true is the model accept nested attributes for the passed attribute
RSpec::Matchers.define :accept_nested_attributes_for do |attribute|
  match do |model|
    model.nested_attributes_options.include? attribute
  end
end
