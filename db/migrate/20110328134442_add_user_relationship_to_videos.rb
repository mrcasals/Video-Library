class AddUserRelationshipToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |v|
      v.references :user
    end
  end

  def self.down
    remove_column :videos, :user_id
  end
end
