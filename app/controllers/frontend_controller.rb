class FrontendController < ApplicationController
	def home
		require 'net/http'
		require 'uri'
		require 'json'

		uri = URI.parse("https://graph.facebook.com/v2.3/#{params[:idpost]}/sharedposts?fields=from&limit=9999&access_token=EAACEdEose0cBAFQOCGEnk47GyEJiFku3JhR2O0Kzk0buqyvNTYf63ZCLvZBapSnO94HhD1AYBq5X2ZABm7qYhWilbZAssVNnT8SxR11AgQkNe3GD1MjkvUSrsFq2S4qWL1taLnjt58MhwVMBTkT2ox7IfXKHDPpDTyVjDV5WfnzHYpfp5nDp")
		response = Net::HTTP.get_response(uri)
		@json = JSON.parse(response.body)
	end
end
