class AdminstersController < ApplicationController
     def create
    @vendor = Vendor.find(params[:vendor_id])
    @vendor = @vendor.adminsters.create(adminster_params)
    redirect_to vendor_path(@vendor)
  end
 
  private
    def adminster_params
      params.require(:adminster).permit(:email)
    end
end
