class Section < ActiveRecord::Base
  has_many :tokens
end

class Document < ActiveRecord::Base
  attr_protected :protect_me
  has_one :section
  accepts_nested_attributes_for :section
end

