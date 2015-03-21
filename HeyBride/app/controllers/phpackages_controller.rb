class PhpackagesController < ApplicationController
			  def create
    @photographer = Photographer.find(params[:photographer_id])
    @phpackage = @photographer.phpackages.create(phpackage_params)
    redirect_to photographer_path(@photographer)
  end
 
  private
    def phpackage_params
      params.require(:phpackage).permit(:name, :price, :description)
    end
end
