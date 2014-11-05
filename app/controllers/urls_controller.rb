class UrlsController < ApplicationController
	before_filter :authenticate_user!
	
  def new
  end

  def create
  	 if !params[:url].blank?
      client = Bitly.client
      @url = client.shorten(params[:url])
      BitLyUrl.create!(url: @url.short_url, user_id: current_user.id)#o url como se te hinche
    end
  end
end
