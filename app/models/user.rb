class User < ActiveRecord::Base


	def get(username)
		if !username.empty?
			user = User.find_by(username: username.downcase)
		else
			nil
		end
	end
end
