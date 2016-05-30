class Image < ActiveRecord::Base
	validates :image_path, presence: true
	belongs_to :project
end
