class Category < ActiveRecord::Base
	has_attached_file :image_path, styles: { medium: "300x300>", thumb: "100x100>", large: "500x500" },default_url: "/images/:style/missing.png", :default_style => :medium

	has_many :projects

	validates_attachment :image_path, 
      content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] },
      :size => { :in => 0..5000.kilobytes }

	validates :name, presence: true
end
