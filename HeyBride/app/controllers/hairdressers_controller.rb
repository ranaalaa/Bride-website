class HairdressersController < ApplicationController

    before_action :authenticate_user!

 def index 
  if params[:search]
      @hairdresser = Hairdresser.search(params[:search]).order("created_at DESC")
    else
      @hairdresser = Hairdresser.order("created_at DESC")
    end
  
  end
 
	def new
  end
  def destroy
  @hairdresser = Hairdresser.find(params[:id])
  @hairdresser.destroy
 
  redirect_to hairdressers_path
end

    def edit
    @hairdresser= Hairdresser.find(params[:id])
  end
 
def update
  @hairdresser = Hairdresser.find(params[:id])
 
  if @hairdresser.update(hairdresser_params)
    redirect_to @hairdresser
  else
    render 'edit'
  end
end

   def show
    @hairdresser = Hairdresser.find(params[:id])
  end

  def showp
    @hairdresser = Hairdresser.find(params[:id])
  end
   def showsample
    @hairdresser = Hairdresser.find(params[:id])
  end
  def create
  @hairdresser = Hairdresser.new(hairdresser_params)
 
  @hairdresser.save
  redirect_to @hairdresser
end
 
private
  def hairdresser_params
    params.require(:hairdresser).permit(:email, :telephone, :mobile, :address, :name, :image)
  end
end
