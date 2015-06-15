class FavoritesController < ApplicationController
##
  def create
    @favorite = Favorite.new(favoller_id: current_user.id , faved_id: params[:faved_id])
    @favorite.save
    flash[:success] = "★Favorite★"
    redirect_to root_url
	end
end
