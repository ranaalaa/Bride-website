class PackagesController < ApplicationController
 def create
    @vendor = Vendor.find(params[:vendor_id])
    @package = @vendor.packages.create(package_params)
    redirect_to vendor_path(@vendor)
  end
 
   def destroy
    @vendor = Vendor.find(params[:vendor_id])
    @package = @vendor.packages.find(params[:id])
    @package.destroy
    redirect_to showPackages_vendor_path(@vendor)
  end

  def edit
    @vendor= Vendor.find(params[:vendor_id])
    @package = @vendor.packages.find(params[:id])
  end

   def update
    @vendor= Vendor.find(params[:vendor_id])
    @package = @vendor.packages.find(params[:id])

    if @package.update(package_params)
    redirect_to showPackages_vendor_path(@vendor)
    else
      render 'edit'
    end
  end
 
  private
    def package_params
      params.require(:package).permit(:name, :price, :description)
    end
end
