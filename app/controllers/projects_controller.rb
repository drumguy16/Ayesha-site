class ProjectsController < ApplicationController
	def index
	end

	def new
		@project = Project.new()
	end

	def create 
		@project = Project.new( project_params )
		@project.category_id = params[:category_id]

		@project.save
		redirect_to "/categories/#{@project.category_id}/projects/#{@project.id}"
	end

	def show
		@project = Project.find(params[:id])
	end

	private
	
	def project_params
  		params.require(:project).permit(:main_image_path, :title, :sales_pitch, :description)
	end
end