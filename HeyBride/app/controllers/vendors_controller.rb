##
# This class represents the categories in the website (hairdressers,make-up,dress stores..etc)
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
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action display the Hairdressers and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the hairdressers specified in the search params
 # Failure:
 # The user gets a message "no matches found"
  def indexHairdressers
    @q = Vendor.where(entry:'Hairdresser').ransack(params[:q])
    @vendors = @q.result(:distinct=>true)
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action display the Dresses stores and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Dresses stores specified in the search params
 # Failure:
 # The user gets a message "no matches found"
  def indexDresses
    @q = Vendor.where(entry:'Dress').ransack(params[:q])
    @vendors = @q.result(:distinct=>true)
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
   # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action display the Make-up artists and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Makeup-artists specified in the search params
 # Failure:
 # The user gets a message "no matches found"
  def indexMakeup
   @q = Vendor.where(entry:'Makeup').ransack(params[:q])
    @vendors = @q.result(:distinct=>true)
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action display the photographers and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the photographers specified in the search params
 # Failure:
 # The user gets a message "no matches found"
  def indexPhotographers
   @q = Vendor.where(entry:'Photographer').ransack(params[:q])
    @vendors = @q.result(:distinct=>true)
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action display the Suites stores and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Suites stores specified in the search params
 # Failure:
 # The user gets a message "no matches found"
  def indexSuites
   @q = Vendor.where(entry:'Suit').ransack(params[:q])
    @vendors = @q.result(:distinct=>true)
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action display the Spa centers and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Spa centers specified in the search params
 # Failure:
 # The user gets a message "no matches found"
  def indexSpa
    @q = Vendor.where(entry:'Spa').ransack(params[:q])
    @vendors = @q.result(:distinct=>true)
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action display the Djs and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Djs specified in the search params
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
