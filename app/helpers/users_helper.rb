module UsersHelper
	def gravatar_for(user, size = 30)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar", size: 30)
	end

	def gravatar_for_email(email, size = 30)
		gravatar_id = Digest::MD5::hexdigest(email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: email, class: "gravatar", size: 30)
	end
end
