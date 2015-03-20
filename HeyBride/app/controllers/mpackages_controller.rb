class MpackagesController < ApplicationController
		  def create
    @makeup = Makeup.find(params[:makeup_id])
    @mpackage = @makeup.mpackages.create(mpackage_params)
    redirect_to makeup_path(@makeup)
  end
 
  private
    def mpackage_params
      params.require(:mpackage).permit(:name, :price, :description)
    end
end
