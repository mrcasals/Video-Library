class AddYearToVideos < ActiveRecord::Migration
  def self.up
    add_column :videos, :year, :integer
  end

  def self.down
    remove_column :videos, :year
  end
end
