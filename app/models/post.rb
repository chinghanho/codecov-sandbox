class Post < ApplicationRecord
	def trimmed_title
		title.strip
	end
end
