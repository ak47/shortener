require 'zlib'

class Shorty < ActiveRecord::Base
  include Zlib
  has_many :hits
  belongs_to :user

  validates :url, :presence => true
  validates :user, :presence => true

  scope :per_user, lambda{|user| where(:user_id => user)}

  before_save do |shorty|
    shorty.key = crc32(shorty.url)
  end
end
