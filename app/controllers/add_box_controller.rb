require 'net/http'
require 'json'
require 'cgi'

class AddBoxController < ApplicationController

	def addModal
		@keyword = params[:keyword]
		@rt = search(@keyword)
	end

	def search(keyword)
		url = URI.parse('http://musicbrainz.org/ws/2/artist/?query=' + keyword + '&fmt=json')

		res = Net::HTTP.get_response(url)
		res_json = res.body
		res_hash = JSON.parse(res_json)["artist"] #.first["area"]["name"]
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
