require 'net/http'
require 'json'

class AddBoxController < ApplicationController

	def addModal
		@keyword = params[:keyword]
		@criterion = params[:criterion] #criterion
		@rt = search(@keyword, @criterion)
	end

	def search(keyword, criterion)
		# switch criterion 
		# refact code
		case criterion.to_i
			when 1
				criterion = "artist"
				filter = criterion
				@criterion_show = "Artist"
			when 2
				criterion = "release-group"
				filter = "release-groups"
				@criterion_show = "Album"
			else
				criterion = "recording"
				filter = criterion
				@criterion_show = "Track"

		end 
		keyword_search = keyword.clone
		keyword_search.gsub! /\s+/, '%20'
		url = URI.parse('http://musicbrainz.org/ws/2/' + criterion + '/?query=' + keyword_search + '&fmt=json')

		res = Net::HTTP.get_response(url)
		res_json = res.body
		res_hash = JSON.parse(res_json)[filter]
		return res_hash
	end

end
