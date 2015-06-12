class FavoritesController < ApplicationController
##
  def create
  	logger.debug("****************")
  	logger.debug(params)
  	logger.debug("****************")
    #@micropost = Micropost.find(params[:favorite][:feed_item])
    #@favorite = Micropost.find(params[:faved_id])
    @favorite = Favorite.new(favoller_id: current_user.id , faved_id: params[:faved_id])
    @favorite.save
    flash[:success] = "★Favorite★"
    redirect_to root_url
    #@favorite = Favorite.find_or_create_by(comment_id: params[:comment_id], user_id: current_user.id)


     #current_user.follow!(@micropost)
     #respond_to do |format|
     # format.html { redirect_to @micropost }
     #  format.js
	end
  end

#  def destroy
#    @favorite = Favorite.find_by(params[:id])
#    @favorite.destroy
#	end
#end


 # def create
 #    @user = User.find(params[:relationship][:followed_id])
 #    current_user.follow!(@user)
 #    respond_to do |format|
 #      format.html { redirect_to @user }
 #      format.js
 #    end
 #  end

 #  def destroy
 #    @user = Relationship.find(params[:id]).followed
 #    current_user.unfollow!(@user)
 #    respond_to do |format|
 #      format.html { redirect_to @user }
 #      format.js
 #    end
 #  end