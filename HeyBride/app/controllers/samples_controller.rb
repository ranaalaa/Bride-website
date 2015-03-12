class SamplesController < ApplicationController

	  def create
    @hairdresser = Hairdresser.find(params[:hairdresser_id])
    @sample = @hairdresser.samples.create(sample_params)
    redirect_to hairdresser_path(@hairdresser)
  end
 
  private
    def sample_params
      params.require(:sample).permit(:image)
    end
end
