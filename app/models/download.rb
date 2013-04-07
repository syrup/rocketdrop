class Download < ActiveRecord::Base
  attr_accessible :filename, :single_use
  has_attached_file :filename

  validates_presence_of :filename, :single_use
end
