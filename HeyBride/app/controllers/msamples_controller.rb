class MsamplesController < ApplicationController
		  def create
    @makeup = Makeup.find(params[:makeup_id])
    @msample = @makeup.msamples.create(msample_params)
    redirect_to makeup_path(@makeup)
  end
 
  private
    def msample_params
      params.require(:msample).permit(:image)
    end
end
