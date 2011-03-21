class AddTimestampToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.timestamp
    end
  end

  def self.down
    remove_column :videos, :created_at
    remove_column :videos, :updated_at
  end
end
