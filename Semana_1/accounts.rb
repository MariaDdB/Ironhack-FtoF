class Account
	@@insecure_accounts = 0
	attr_accessor :user, :password, :website
	def initialize user, password, website
		@user = user
		@password = password
		@website = website
		@encrypted = false
		@decrypted = false
		if @password.length < 5
			@@insecure_accounts += 1
		end
	end

	def show_total_accounts
		puts @@insecure_accounts
	end

	def show_accounts
		puts "#{user} #{password} #{website}"
	end

	def encrypt_password 
		new_password = []

		if @encrypted === false
			@password.each_byte do |x|
				if(x < 91 && x > 87) || (x < 123 && x > 119)
					new_password << (x - 23)
				else
					new_password << (x + 3)
				end
			end

			@password = ""

			new_password.each do |x|
				@password << x.chr
			end
		@encrypted = true
		@decrypted = false
		end
	end

	def decrypt_password
		new_password = []

		if @decrypted === false
			@password.each_byte do |x|
				if(x < 68 && x > 84) || (x < 100 && x > 96)
					new_password << (x + 23)
				else
					new_password << (x - 3)
				end
			end

			@password = ""

			new_password.each do |x|
				@password << x.chr
			end
		@decrypted = true
		@encrypted = false
		end
	end	
end
ac = Account.new "Maria", "abcde", "www.facebook.com"
facebook = Account.new "Fran", "1234", "www.facebook.com"
twitter = Account.new "Carlos", "mfskdfje", "www.twitter.com"
ac.encrypt_password
ac.show_accounts
ac.decrypt_password
ac.show_accounts

ac.show_total_accounts
