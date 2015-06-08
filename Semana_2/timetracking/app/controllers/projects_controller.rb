class ProjectsController < ApplicationController
	def index

		#@projects = Project.order(created_at: :desc).limit(10)
		#Project.order está bien pero tendría que ir en el modelo Project,no en el controlador
		@projects = Project.last_created_projects(10)
	end

	def show
		begin
			@project = Project.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'no_projects_found'
		end
	end

	def new
		@project = Project.new 
	end

	def create
		@project = Project.new projects_params
		
		if @project.save
			flash[:notice] = 'Project created successfully'
			redirect_to @project
		else
			flash[:alert] = 'Repeat please'
			render 'new'
		end
	end

	def edit
		@project = Project.find params[:id]
	end

	def update
		@project = Project.find params[:id]
		
		if @project.update projects_params
			redirect_to @project
		else
			render 'edit'
		end
	end

	def destroy
		project = Project.find params[:id]
		project.destroy
		redirect_to projects_path
	end

	private
	def projects_params
		params.require(:project).permit(:name, :description)
	end
end
