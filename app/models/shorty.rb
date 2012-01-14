require 'zlib'

class Shorty < ActiveRecord::Base
  include Zlib

  validates :url, :presence => true

  before_save do |shorty|
    shorty.key = crc32(shorty.url)
  end
end
