class Video < ActiveRecord::Base

  belongs_to :folder

  default_scope order(:name)

  validates :name, :link, :folder_id, presence: true

end
