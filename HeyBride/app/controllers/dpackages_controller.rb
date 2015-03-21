class DpackagesController < ApplicationController
    def create
    @dj = Dj.find(params[:dj_id])
    @dpackage = @dj.dpackages.create(dpackage_params)
    redirect_to dj_path(@dj)
  end
 
  private
    def dpackage_params
      params.require(:dpackage).permit(:name, :description, :price)
    end
end


