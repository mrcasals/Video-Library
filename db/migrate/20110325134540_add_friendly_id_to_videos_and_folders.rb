class AddFriendlyIdToVideosAndFolders < ActiveRecord::Migration
  def self.up
    add_column :videos, :cached_slug, :string
    add_column :folders, :cached_slug, :string
  end

  def self.down
    remove_column :videos, :cached_slug
    remove_column :folders, :cached_slug
  end
end
