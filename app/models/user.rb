class User < ActiveRecord::Base

	class << self # Class methods
		def get(username)
			if !username.empty?
				user = User.find_by(username: username.downcase)
			else
				nil
			end
		end
	end

end
