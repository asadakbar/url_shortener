class AddShortUrlToUrl < ActiveRecord::Migration
  def self.up
    add_column :urls, :short_url, :string
  end

  def self.down
    remove_column :urls, :short_url
  end
end
