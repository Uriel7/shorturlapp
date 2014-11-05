class DashboardController < ApplicationController
	#Método que muestra todos los ShortUrl que genera el usuario actual
	def index
		@bit_ly_urls = current_user.bit_ly_urls
	end

end
