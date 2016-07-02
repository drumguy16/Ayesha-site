class PicsController < ApplicationController
	def new
		@pic = Pic.new()
	end

	def edit
		@pic = Pic.find(params[:id])
	end

	def create
		@pic = Pic.new( pic_params )
		if params[:showable] == "1"
			@pic.showable = true
		end
		@pic.project_id = params[:project_id]
		if @pic.save
			redirect_to category_project_pic_path(params[:category_id], params[:project_id], @pic)
		else
			render 'new'
		end
	end

	def update
		@pic = Pic.find(params[:id])
		if @pic.update( pic_params )
			redirect_to category_project_pic_path
		else
			render 'edit'
		end
	end

	def show
		@pic = Pic.find(params[:id])
		@project = Project.find(@pic.project_id)
	end

	def destroy
		@pic = Pic.find(params[:id])
		project = Project.find(params[:project_id])
		@pic.destroy

		redirect_to category_project_path(params[:category_id], params[:project_id])
	end

	private
	
	def pic_params
  		params.require(:pic).permit(:title, :description, :pic_path, :project_id, :showable)
	end

end