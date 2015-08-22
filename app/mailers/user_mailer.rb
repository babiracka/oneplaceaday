class UserMailer < ApplicationMailer
	default from: 'rishi@joshsoftware.com'
	def daily(email)
		@newsletter = newsletter
		@recipient = recipient
		mail to: email, subject: "Don't miss the newest posts"
	end
	def monthly(email)
		@newsletter = newsletter
		@recipient = recipient
		mail to: email, subject: "This month's brief"
	end
end

