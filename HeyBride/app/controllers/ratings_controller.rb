class RatingsController < ApplicationController
  
    # Author:
    # Rana Alaa' 
    # Description:
    # this action creates the  rating for each vendor done by the users 
    # Params:
    # @vendor: this gets the vendor_id of which the user wants to rate
    # @rating: this saves the rating done by the user for specific vendor 
    # rating_params: integer score 
    # Success:
    # The user submits the rating of this vendor successfully
    # Failure:
    # The user couldn't rate the vendor and this will cause a failure in the average rating as well 
  def create
    @vendor = Vendor.find(params[:vendor_id])
    @rating = @vendor.ratings.create(rating_params)
    # @rating = @user.ratings.create(rating_params)
    if @rating.save 
      redirect_to vendor_path(@vendor) 
           
    end
  end

  private
    def rating_params
      params.require(:rating).permit(:score, :rater)
      
    end
  end


