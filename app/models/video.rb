class Video < ActiveRecord::Base

  belongs_to :folder
  belongs_to :user
  has_friendly_id :name, :use_slug => true

  scope(:last_published, lambda {|limit|
    order(Video.arel_table[:created_at].desc).limit(limit)
  })

  scope(:order_by_desc, lambda {|param|
    order(Video.arel_table[param].desc)
  })
  
  validates :name, :link, :folder_id, :user_id, presence: true

  def self.by_folder(folder)
    folders = Folder.arel_table
    joins(:folder).where(folders[:parent_id].eq(folder.id).or(folders[:id].eq(folder.id)))
  end

end
