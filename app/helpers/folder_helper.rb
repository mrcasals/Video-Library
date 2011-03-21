module FolderHelper

  def root_folders
    Folder.where(:parent_id => nil).all
  end

end
