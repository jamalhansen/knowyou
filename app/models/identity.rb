require 'uri'

class Identity < ActiveRecord::Base
  belongs_to :user

  validates_uniqueness_of :name, :message => 'OpenID is already registered'
  validates_format_of :name, :with => URI.regexp, :message => 'OpenID is not in a valid format'
end
