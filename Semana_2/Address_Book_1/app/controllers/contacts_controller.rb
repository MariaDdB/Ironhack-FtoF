class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
	end

	def show
		begin
			@contact = Contact.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'no_contacts_found'
		end
	end

	def filter_contacts
        if @contacts != nil
           @contacts = Contact.search_by_letter params[:letter]
           render 'index'
       else
           render 'no_contacts_found'
       end
   end
end
