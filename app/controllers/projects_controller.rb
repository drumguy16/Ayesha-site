class ProjectsController < ApplicationController
	def index
	end

	def new
		@project = Project.new()
	end

	def edit
		@project = Project.find(params[:id])
	end

	def create 
		@project = Project.new( project_params )
		@project.category_id = params[:category_id]

		if @project.save
			redirect_to "/categories/#{@project.category_id}/projects/#{@project.id}"
		else
			render 'new'
		end
	end

	def update
		@project = Project.find(params[:id])
		if @project.update(project_params)
			redirect_to "/categories/#{@project.category_id}/projects/#{@project.id}"
		else
			render 'edit'
		end
	end

	def show
		@project = Project.find(params[:id])
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		redirect_to category_path(params[:category_id])
	end

	private
	
	def project_params
  		params.require(:project).permit(:main_image_path, :title, :sales_pitch, :description)
	end
end