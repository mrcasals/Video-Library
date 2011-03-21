class AddLinkToVideos < ActiveRecord::Migration
  def self.up
    add_column :videos, :link, :string
  end

  def self.down
    remove_column :videos, :link
  end
end
