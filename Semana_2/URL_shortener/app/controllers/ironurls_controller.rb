class IronurlsController < ApplicationController
	def index
		@urls = Ironurl.all
	end
	def redirect_url
		
		begin
			@urlto = Ironurl.find params[:id]
			@urlto.visit += 1
			@urlto.save
			redirect_to @urlto.url
		rescue ActiveRecord::RecordNotFound
			render 'no_url_found'
		end
	end
	def most_visited_pages
		@urls = Ironurl.all
		@urls.visit.where()
	end
end
