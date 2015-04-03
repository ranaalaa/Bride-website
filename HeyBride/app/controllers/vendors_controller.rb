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
     def indexDjs
if params[:search]
    @vendors = Vendor.search(params[:search]).where(entry:'Dj').order("created_at DESC")
  else
    @vendors = Vendor.where(entry:'Dj').order('created_at DESC')
   end 
 end

 
  def indexYacht
    @vendors = Vendor.where(entry:'Yacht').order('created_at DESC')
  end
  # Author:
 # Mayada Tarek
 # Description:
 # this action display the Vilas
 # Success:
 # The user gets the list of all Villas 
 # Failure:
 # No Villas to view
    
  def indexVilla
    @vendors = Vendor.where(entry:'Villa').order('created_at DESC')
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
