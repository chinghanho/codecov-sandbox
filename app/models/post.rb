class Post < ApplicationRecord
	def trimmed_title
		title.strip
	end

	def base_title
		"#{title} | Test"
	end
end
