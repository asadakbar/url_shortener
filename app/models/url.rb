class Url < ActiveRecord::Base

  attr_accessible :long_url, :short_url

  before_create :shorten

  def shorten
    self.short_url = ('a'..'z').to_a.shuffle[0..7].join
  end

end
