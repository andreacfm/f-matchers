class Section < ActiveRecord::Base
end  

class Document < ActiveRecord::Base
  attr_protected :protect_me
  has_one :section
  accepts_nested_attributes_for :section
end  

