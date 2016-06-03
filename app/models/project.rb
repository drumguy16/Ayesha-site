class Project < ActiveRecord::Base
	has_attached_file :main_image_path, styles: { medium: "300x300>", thumb: "100x100>", large: "500x500" },default_url: "/images/:style/missing.png", :default_style => :medium

	validates_attachment :main_image_path, 
      content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] },
      :size => { :in => 0..5000.kilobytes } 

	validates :title, presence: true

	belongs_to :category
	has_many :pics
end
