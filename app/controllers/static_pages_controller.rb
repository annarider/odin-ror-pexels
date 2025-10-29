class StaticPagesController < ApplicationController
  def home
    if params[:collection_id].present?
      client = Pexels::Client.new(ENV['PEXELS_API_KEY'])
      @photos = client.collection_media(params[:collection_id])
    end
  end
end
