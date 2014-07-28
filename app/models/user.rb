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


	 def self.authenticate(username, password)
	  user = find_by_username(username)
	  if user && user.password == password
	    user
	  else
	    nil
	  end
	end

end
