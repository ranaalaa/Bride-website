class PhsamplesController < ApplicationController
		  def create
    @photographer = Photographer.find(params[:photographer_id])
    @phsample = @photographer.phsamples.create(phsample_params)
    redirect_to photographer_path(@photographer)
  end
 
  private
    def phsample_params
      params.require(:phsample).permit(:image)
    end

end
