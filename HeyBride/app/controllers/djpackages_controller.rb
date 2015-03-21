class DjpackagesController < ApplicationController
     def create
    @dj = Dj.find(params[:dj_id])
    @djpackage = @dj.djpackages.create(djpackage_params)
    redirect_to dj_path(@dj)
  end
 
  private
    def djpackage_params
      params.require(:djpackage).permit(:name, :description, :price)
    end
end

