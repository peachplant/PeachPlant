class Attachmentship < ActiveRecord::Base
  belongs_to :listing
  belongs_to :attachment
end
