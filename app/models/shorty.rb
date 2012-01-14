class Shorty < ActiveRecord::Base
  validates :url, :presence => true
end
