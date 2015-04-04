class VendorsController < ApplicationController
        before_action :authenticate_user!

  def new
  end
  def destroy
  @vendor = Vendor.find(params[:id])
  @vendor.destroy
 
redirect_to :controller => 'welcome', :action => 'HomePage'   
  end
def index
  
end
  def edit
    @vendor= Vendor.find(params[:id])
  end
 
def update
  @vendor = Vendor.find(params[:id])
 
  if @vendor.update(vendor_params)
    redirect_to @vendor
  else
    render 'edit'
  end
end

  def showPackages
   @vendor= Vendor.find(params[:id])
  end

  def showBrands
   @vendor= Vendor.find(params[:id])
  end


  def showSamples
   @vendor= Vendor.find(params[:id])
  end

   def show
    @vendor = Vendor.find(params[:id])
   end
 # Author:
 # Jala Ashraf
 # Description:
 # This action displays the index view of the Hairdressers in grid view in which it displays a row in group of 3 contating the image and below it the name of the Hairdressers
 # Success:
 # The user views the list of Hairdressers in a grid view of 3 per row
 # Failure:
 # The user views the list of Hairdressers in any other view but the grid view in group of 3 per row
def indexHairdressers
 if params[:search]
    @vendors = Vendor.search(params[:search]).where(entry:'Hairdresser').order("created_at DESC")
  else
    @vendors = Vendor.where(entry:'Hairdresser').order('created_at DESC')
 end
end
   def indexDresses
 if params[:search]
    @vendors = Vendor.search(params[:search]).where(entry:'Dress').order("created_at DESC")
  else
    @vendors = Vendor.where(entry:'Dress').order('created_at DESC')
 end
   end
    def indexMakeup
if params[:search]
    @vendors = Vendor.search(params[:search]).where(entry:'Makeup').order("created_at DESC")
  else
    @vendors = Vendor.where(entry:'Makeup').order('created_at DESC')
end 
    end
 # Author:
 # Jala Ashraf
 # Description:
 # This action displays the index view of the Photographers in grid view in which it displays a row in group of 3 contating the image and below it the name of the Photographers
 # Success:
 # The user views the list of Photographers in a grid view of 3 per row
 # Failure:
 # The user views the list of Photographers in any other view but the grid view in group of 3 per row
    def indexPhotographers
if params[:search]
    @vendors = Vendor.search(params[:search]).where(entry:'Photographer').order("created_at DESC")
  else
    @vendors = Vendor.where(entry:'Photographer').order('created_at DESC')
end
    end
    def indexSuites
if params[:search]
    @vendors = Vendor.search(params[:search]).where(entry:'Suit').order("created_at DESC")
  else
    @vendors = Vendor.where(entry:'Suit').order('created_at DESC')
end 
    end
  def indexSpa
if params[:search]
    @vendors = Vendor.search(params[:search]).where(entry:'Spa').order("created_at DESC")
  else
    @vendors = Vendor.where(entry:'Spa').order('created_at DESC')
end 
  end
 # Author:
 # Jala Ashraf
 # Description:
 # This action displays the index view of the Djs in grid view in which it displays a row in group of 3 contating the image and below it the name of the Dj
 # Success:
 # The user views the list of Djs in a grid view of 3 per row
 # Failure:
 # The user views the list of Djs in any other view but the grid view in group of 3 per row
     def indexDjs
if params[:search]
    @vendors = Vendor.search(params[:search]).where(entry:'Dj').order("created_at DESC")
  else
    @vendors = Vendor.where(entry:'Dj').order('created_at DESC')
end 
     end
 # Author:
 # Jala Ashraf
 # Description:
 # This action displays the index view of the Halls in grid view in which it displays a row in group of 3 contating the image and below it the name of the Hall and its location
 # Success:
 # The user views the list of halls in a grid view of 3 per row
 # Failure:
 # The user views the list of halls in any other view but the grid view in group of 3 per row
    def indexHall
    @vendors = Vendor.where(entry:'Hall').order('created_at DESC')
    end
 # Author:
 # Jala Ashraf
 # Description:
 # This action displays the index view of in grid view in which it displays a row in group of 3 contating the image and below it the name of the Garden and its location
 # Success:
 # The user views the list of Gardens in a grid view of 3 per row
 # Failure:
 # The user views the list of Gardens in any other view but the grid view in group of 3 per row
    def indexGarden
    @vendors = Vendor.where(entry:'Garden').order('created_at DESC')
    end
 
  def create
  @vendor = Vendor.new(vendor_params)
 
  @vendor.save
  redirect_to @vendor
  end
 
private
  def vendor_params
    params.require(:vendor).permit(:email, :telephone, :mobile, :address, :name, :image, :entry, :location, :capacity, :stars)
  end
end
