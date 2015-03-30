class SamplesController < ApplicationController
	 def create
    @vendor = Vendor.find(params[:vendor_id])
    @sample = @vendor.samples.create(sample_params)
    redirect_to vendor_path(@vendor)
  end


   def destroy
    @vendor = Vendor.find(params[:vendor_id])
    @sample = @vendor.samples.find(params[:id])
    @sample.destroy
    redirect_to vendor_path(@vendor)
  end
 
 
  private
    def sample_params
      params.require(:sample).permit(:image)
    end
end

