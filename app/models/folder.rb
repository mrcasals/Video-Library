class Folder < ActiveRecord::Base

  has_many :folders, foreign_key: 'parent_id', :class_name => 'Folder', dependent: :destroy
  belongs_to :parent, :class_name => 'Folder'
  has_many :videos

  has_friendly_id :name, :use_slug => true

  default_scope order(:name)

  validates :name, presence: true

  def self.name_with_tree
    folders = Folder.includes(:parent).all.collect do |folder|
      if !folder.parent_id.blank?
        folder_name = "#{folder.parent.name} -> #{folder.name}"
        folder_tree = [ folder_name, folder.id ]
      else
        folder_tree = [ folder.name, folder.id ]
      end
      folder_tree
    end
    folders.sort! { |a, b| a[0].downcase <=> b[0].downcase }
  end

end
