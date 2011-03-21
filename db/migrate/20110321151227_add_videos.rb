class AddVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :name
      t.text :description
      t.integer :length
      t.references :folder
  end

  def self.down
    drop_table :videos
  end
end
