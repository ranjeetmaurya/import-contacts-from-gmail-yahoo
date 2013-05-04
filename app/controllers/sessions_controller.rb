class SessionsController < ApplicationController
	def callback
		@contacts = request.env['omnicontacts.contacts']
	end

	def failure
		render :text => "Something went Wrong" and return false
	end
end
