class WebClip < ActiveRecord::Base
  validates :title, :url, :presence => true
  validates :url, :uniqueness => true
end
