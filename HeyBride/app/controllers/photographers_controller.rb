class PhotographersController < ApplicationController

    before_action :authenticate_user!

 def index
   if params[:search]
      @photographer= Photographer.search(params[:search]).order("created_at DESC")
    else
      @photographer = Photographer.order("created_at DESC")
    end
  end
 
	def new
  end
  def destroy
  @photographer = Photographer.find(params[:id])
  @photographer.destroy
 
  redirect_to photographers_path
end

    def edit
    @photographer= Photographer.find(params[:id])
  end
 
def update
  @photographer = Photographer.find(params[:id])
 
  if @photographer.update(photographer_params)
    redirect_to @photographer
  else
    render 'edit'
  end
end

   def show
    @photographer = Photographer.find(params[:id])
  end

  def showp
    @photographer = Photographer.find(params[:id])
  end
   def showsample
    @photographer = Photographer.find(params[:id])
  end
  def create
  @photographer = Photographer.new(photographer_params)
 
  @photographer.save
  redirect_to @photographer
end
 
private
  def photographer_params
    params.require(:photographer).permit(:email, :telephone, :mobile, :address, :name, :image)
  end
end


