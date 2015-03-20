class PackagesController < ApplicationController

		  def create
    @hairdresser = Hairdresser.find(params[:hairdresser_id])
    @package = @hairdresser.packages.create(package_params)
    redirect_to hairdresser_path(@hairdresser)
  end
 
  private
    def package_params
      params.require(:package).permit(:name, :price, :description)
    end
end

