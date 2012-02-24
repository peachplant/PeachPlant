class Tag < ActiveRecord::Base

  has_many :listings, :through => :tagships

end
