class ImagesController < ApplicationController
	def new
	end

	def show
		@image = Image.find(params[:id])
		@project = Project.find(@image.project_id)
	end
end