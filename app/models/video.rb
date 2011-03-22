class Video < ActiveRecord::Base

  belongs_to :folder

  default_scope order(:name)

  scope(:last_published, lambda {|limit|
    order(Video.arel_table[:created_at].desc).limit(limit)
  })

  validates :name, :link, :folder_id, presence: true

end
