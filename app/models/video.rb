class Video < ActiveRecord::Base

  belongs_to :folder
  belongs_to :user
  has_friendly_id :name, :use_slug => true

  scope(:last_published, lambda {|limit|
    order(Video.arel_table[:created_at].desc).limit(limit)
  })

  validates :name, :link, :folder_id, presence: true

  def self.by_folder(folder)
    folders = Folder.arel_table
    joins(:folder).where(folders[:parent_id].eq(folder.id).or(folders[:id].eq(folder.id)))
  end

end
