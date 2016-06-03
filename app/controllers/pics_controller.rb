class PicsController < ApplicationController
	def new
		@pic = Pic.new()
	end

	def create
		@pic = Pic.new( pic_params )
		@pic.project_id = params[:project_id]
		if @pic.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
		@pic = Pic.find(params[:id])
		@project = Project.find(@pic.project_id)
	end

	private
	
	def pic_params
  		params.require(:pic).permit(:title, :description, :pic_path, :project_id)
	end

end