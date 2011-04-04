class Folder < ActiveRecord::Base

  has_many :folders, foreign_key: 'parent_id', :class_name => 'Folder', dependent: :destroy
  belongs_to :parent, :class_name => 'Folder'
  has_many :videos

  has_friendly_id :name, :use_slug => true

  default_scope order(:name)

  validates :name, presence: true

  def self.name_with_tree
    array = Array.new
    Folder.all.each do |folder|
      if !folder.parent_id.blank?
        folder_name = "#{folder.parent.name} -> #{folder.name}"
        folder_tree = [ folder_name, folder.id ]
      else
        folder_tree = [ folder.name, folder.id ]
      end
      array << folder_tree
    end
    array.sort! { |a, b| a[0].downcase <=> b[0].downcase }
  end

end
