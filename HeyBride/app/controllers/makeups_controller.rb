class MakeupsController < ApplicationController
	def index
		@makeups= Makeup.all
	end
		def new
			@makeup = Makeup.new
  end
    def create
  @makeup = Makeup.new(makeup_params)
 
  @makeup.save
  redirect_to @makeup
end
 
 def destroy
  @makeup = Makeup.find(params[:id])
  @makeup.destroy
 
  redirect_to makeups_path
end

    def edit
    @makeup= Makeup.find(params[:id])
  end
 
def update
  @makeup = Makeup.find(params[:id])
 
  if @makeup.update(makeup_params)
    redirect_to @makeup
  else
    render 'edit'
  end
end

   def show
    @makeup = Makeup.find(params[:id])
  end
    def showp
    @makeup = Makeup.find(params[:id])
  end
  def showsample
    @makeup = Makeup.find(params[:id])
  end
private
  def makeup_params
    params.require(:makeup).permit(:email, :telephone, :mobile, :address, :name, :image)
  end
end
