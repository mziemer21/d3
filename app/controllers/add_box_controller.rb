require 'net/http'
require 'json'
require 'cgi'

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
		res_hash = JSON.parse(res_json)[filter] #.first["area"]["name"]
		array_of_hash = []
		array_of_string = []
		if res_hash
			res_hash.each do |hash|
				#hash = formart_json(hash)
				array_of_hash << hash
			end
		end
		return array_of_hash
	end

	

	#TODO 
	def formart_json(hash)
		name = hash["name"]
		id  = hash["id"]
		
		if hash["area"] 
			area = hash["area"]["name"]
		else
			area = ""
		end

		if hash["type"]
			type = hash["type"]
		else
			type = ""
		end
		
		string = name + " "  + id + " " + area + "  " + type
		return string
	end


end
