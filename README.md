## RSpec matchers

### Active Record

#### accept_nested_attributes_for

    class Section < ActiveRecord::Base
    end

    class Document < ActiveRecord::Base
      has_one :section
      accepts_nested_attributes_for :section
    end
    # test that Document accept_nested_attributes_for(:section)
    it ....
    Document.should accept_nested_attributes_for(:section)


