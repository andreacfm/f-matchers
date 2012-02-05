require "active_record"

class Section < ActiveRecord::Base
end  

class Document < ActiveRecord::Base
  has_one :section
  accepts_nested_attributes_for :section
end  

