require 'zlib'

class Shorty < ActiveRecord::Base
  include Zlib
  has_many :hits

  validates :url, :presence => true

  before_save do |shorty|
    shorty.key = crc32(shorty.url)
  end
end
