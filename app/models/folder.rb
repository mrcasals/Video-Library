class Folder < ActiveRecord::Base

  has_many :folders, foreign_key: 'parent_id', :class_name => 'Folder', dependent: :destroy
  has_many :videos

  default_scope order(:name)

  validates :name, presence: true

end
