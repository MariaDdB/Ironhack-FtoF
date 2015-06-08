class EntriesController < ApplicationController
	def index
		@project = Project.find params[:project_id]
		@entries = @project.entries
	end

	def show
		begin
			@project = Project.find params[:project_id]
			@entries = @project.entries.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'index'
		end
	end

	def new
		@project = Project.find params[:project_id]
		@entry = @project.entries.new
	end

	def create
		@project = Project.find params[:project_id]
		@entry = @project.entries.new entry_params

		if @entry.save
			flash[:notice] = 'Entry created successfully'
			redirect_to project_entries_path(@project)
			#redirect_to action: 'index', controller: 'entries', project_id: @project.id
		else
			flash[:alert] = 'Repeat'
			render 'new'
		end
	end

	def edit
		@project = Project.find params[:project_id]
		@entry = @project.entries.find params[:id]
	end

	def update
		@project = Project.find params[:project_id]
		@entry = Entry.find(params[:id])

		if @entry.update_attributes entry_params
			flash[:notice] = 'Entry updated successfully'
			redirect_to project_entries_path(@project)
		else
			flash[:errors] = @entry.errors.full_messages
			redirect_to edit_project_entry_path(@project, @entry)
		end
	end

	def destroy
		@project = Project.find params[:project_id]
		entry = Entry.find(params[:id])
		entry.destroy
		redirect_to project_entries_path
	end

	private
		def entry_params
			params.require(:entry).permit(:hours, :minutes, :date, :comments)
		end
end
