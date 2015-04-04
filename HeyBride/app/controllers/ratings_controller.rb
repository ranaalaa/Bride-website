class RatingsController < ApplicationController

	 def create
    @vendor = Vendor.find(params[:vendor_id])
    @rating = @vendor.ratings.create(rating_params)
    if @rating.save   
      redirect_to vendor_path(@vendor) 
           flash[:notice]
    end

  end


   def destroy
    @vendor = Vendor.find(params[:vendor_id])
    @rating = @vendor.ratings.find(params[:id])
    @rating.destroy
    redirect_to vendor_path(@vendor)
  end
 
 
  private
    def rating_params
      params.require(:rating).permit(:score)
      
    end
end


