class User < ApplicationRecord
	def alias_name
		name.delete(' ').downcase
	end
end
