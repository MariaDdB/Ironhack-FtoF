class CharactersController < ApplicationController
	def index
		@characters = Character.all
	end

	def show
		begin
			@character = Character.find(params[:id])
			@characters = @character.find_futureetic
		rescue ActiveRecord::RecordNotFound
			render 'no_characters_found'
		end
	end

	def new
		@character = Character.new
	end

	def edit
		@character = Character.find(params[:id])
	end

	def create
		@character = Character.new(character_params)
		@character.save
		redirect_to character_path(@character)
	end

	def update
		@character = Character.find(params[:id])
		@character.update(character_params)
		redirect_to character_path(@character)
	end

	def destroy
		@character = Character.find(params[:id])
		@character.destroy

		redirect_to character_path
	end

	private
		def character_params
			params.require(:character).permit(:age, :favourite_food, :programming_language, :hobbies)
		end
end
