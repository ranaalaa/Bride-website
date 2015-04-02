class RatingsController < ApplicationController

  
   def create
    @vendor = Vendor.find(params[:vendor_id])
    @rating = @vendor.ratings.create(rating_params)
    @rating.user_id = current_user.id
    redirect_to vendor_path(@vendor)
  end
 
 private
    def rating_params
      params.require(:rating).permit(:score)
    end
end

