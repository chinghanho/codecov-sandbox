class User < ApplicationRecord
	def alias_name
		name.delete(' ').downcase
	end

	def vip_name
		"VIP | #{name}"
	end
end
