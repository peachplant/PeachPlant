class Tag < ActiveRecord::Base

  has_many :tagships
  has_many :listings, :through => :tagships

end
