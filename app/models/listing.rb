class Listing < ActiveRecord::Base
  belongs_to :user

  has_many :tagships
  has_many :tags, :through => :tagships

  def self.search(query)
    if query
      find(:all, :conditions => ['title LIKE ?', "%#{query}%"])
    else
      find(:all)
    end
  end

end
