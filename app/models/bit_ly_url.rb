class BitLyUrl < ActiveRecord::Base
	belongs_to :user

	 validates :url, format: { with: /https?:\/\/[\S]+/,
    message: "Debe ingresar una url valida" }

	def counter
    bitly_client.clicks(url).global_clicks
  end

	def bitly_client
	  @bitly_client ||= Bitly.client
	end

	
end
