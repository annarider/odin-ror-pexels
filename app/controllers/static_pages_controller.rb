class StaticPagesController < ApplicationController
  def home
    if params[:collection_id].present?
      client = Pexels::Client.new(ENV['PEXELS_API_KEY'])
      @photos = client.collections[params[:collection_id]].media
    end
  end
end
