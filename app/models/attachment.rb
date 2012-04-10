class Attachment < ActiveRecord::Base
  #TODO: imagemagick doesn't seem to work (on my machine at least) so styles results in error message.
  has_attached_file :file #, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  has_many :attachmentships
  has_many :listings, :through => :attachmentships

end
