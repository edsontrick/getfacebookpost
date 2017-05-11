class FrontendController < ApplicationController
	def home
		require 'net/http'
		require 'uri'
		require 'json'

		uri = URI.parse("https://graph.facebook.com/v2.3/#{params[:idpost]}/sharedposts?fields=from&limit=9999&access_token=#{params[:token]}")
		response = Net::HTTP.get_response(uri)
		@json = JSON.parse(response.body)
	end
end
