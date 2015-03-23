class BrandsController < ApplicationController
	 def create
    @vendor = Vendor.find(params[:vendor_id])
    @brand = @vendor.brands.create(brand_params)
    redirect_to showBrands_vendor_path(@vendor)
  end
 
   def destroy
    @vendor = Vendor.find(params[:vendor_id])
    @brand = @vendor.brands.find(params[:id])
    @brand.destroy
    redirect_to showBrands_vendor_path(@vendor)
  end

  def edit
    @vendor= Vendor.find(params[:vendor_id])
    @brand = @vendor.brands.find(params[:id])
  end

   def update
    @vendor= Vendor.find(params[:vendor_id])
    @brand = @vendor.brands.find(params[:id])

    if @brand.update(brand_params)
    redirect_to showBrands_vendor_path(@vendor)
    else
      render 'edit'
    end
  end
 
  private
    def brand_params
      params.require(:brand).permit(:designer, :bName)
    end
end
