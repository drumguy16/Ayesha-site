class Project < ActiveRecord::Base
	validates :title, presence: true

	belongs_to :category
	has_many :images
end
