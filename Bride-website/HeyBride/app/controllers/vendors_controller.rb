##
# This class represents the different categories in our website
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
     @q = Vendor.where(entry:'Dj').ransack(params[:q])
    @vendors = @q.result

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


# Author:
# Hanan Hosny, Donia Magdy
# Description:
# this action display the Djs and the results of the search filtering
# Params:
# q (this contains a hash of the search parameters that the user passes in)
# Success:
# The user gets the results specified in the search params 
# Failure: 
# The user gets a message "no matches found"

  def indexDjs
    @q = Vendor.where(entry:'Dj').ransack(params[:q])
    @vendors = @q.result(:distinct=>true)
      if @vendors.size.zero?
        flash[:notice] = "No Matches Found"
      end
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


