class FrontendController < ApplicationController
	def home
		require 'net/http'
		require 'uri'
		require 'json'

		uri = URI.parse("https://graph.facebook.com/v2.3/#{params[:idpost]}/sharedposts?fields=from&limit=9999&access_token=EAACEdEose0cBACMQ8P0vHjAbuII8DvxqqxAaI4cEooog1tCopcrllHnogGyTQlFtZCyvCgZBHKGDk7WQHpeSBY5BPr1ycLDDiP8lOqA1SQj3CiHuTzvsrjjPa9JJmVkgpo2DbeInPRQtZBClz7K0Q7EhIkLvp6B5JCxBQM8jRcNp4MtWyIC")
		response = Net::HTTP.get_response(uri)
		@json = JSON.parse(response.body)
	end
end
