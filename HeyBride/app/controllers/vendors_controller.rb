##
# This class represents the categories in the website (hairdressers,make-up,dress stores..etc)
class VendorsController < ApplicationController
  before_filter :authenticate_user!
  def new
  end

  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
    redirect_to :controller => 'welcome', :action => 'HomePage'   
  end
  # Author:
  # Hanan Hosny
  # Description:
  # this action displays the vendors returned from the search
  # Params:
  # search(this contains a hash of the search parameters that the user passes in)
  # Success:
  # The user gets a list of vendors specified in the search params
  # Failure:
  # The user gets a message "no matches found"
  def index
    @vendors = Vendor.search(params[:search]).order("created_at DESC")
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

  def create
    @vendor = Vendor.new(vendor_params)
    @vendor.save
    redirect_to @vendor
  end
 # Description:
 # this action displays the information of the vendor
 # Params:
 # id of the vendor
 # Success:
 # a page appears to the user having the samples,packages, contact info, comments and rating
 # Failure:
 # none
  def show
    @vendor = Vendor.find(params[:id])
    @comments = @vendor.comments.paginate(:page => params[:page], :per_page => 10)
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the Hairdressers and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the hairdressers specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Hairdresser
 # Params:
 # page is the number of pages per Hairdresser
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Hairdressers in one page
  def indexHairdressers

 
       @q = Vendor.where(entry:'Hairdresser').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
   


    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the Dresses stores and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Dresses stores specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Dress
 # Params:
 # page is the number of pages per Dress
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Dresses in one page
  def indexDresses
   @q = Vendor.where(entry:'Dress').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
    
  
 

    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the Make-up artists and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Makeup-artists specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Makeup artist
 # Params:
 # page is the number of pages per Makeup
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Makeup artists in one page
  def indexMakeup
   @q = Vendor.where(entry:'Makeup').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the photographers and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the photographers specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Photographer
 # Params:
 # page is the number of pages per Photographer
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Photographers in one page
  def indexPhotographers
   @q = Vendor.where(entry:'Photographer').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the Suites stores and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Suites stores specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Suit Store
 # Params:
 # page is the number of pages per Suit Store
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Suit Stores in one page
  def indexSuites
     @q = Vendor.where(entry:'Suit').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the Spa centers and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Spa centers specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Spa and beauty centers
 # Params:
 # page is the number of pages per Spa and beauty centers
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Spas and beauty centers in one page
  def indexSpa
    @q = Vendor.where(entry:'Spa').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the Djs and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Djs specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Dj
 # Params:
 # page is the number of pages per Dj
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Djs in one page
  def indexDjs
  @q = Vendor.where(entry:'Dj').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end
  end 
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the yachts and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the yachts specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Yacht
 # Params:
 # page is the number of pages per Yacht
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Yachts in one page
  def indexYacht
  @q = Vendor.where(entry:'Yacht').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end  
  end
    
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the villas and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the villas specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Villa
 # Params:
 # page is the number of pages per Villa
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Villas in one page
  def indexVilla
    @q = Vendor.where(entry:'Villa').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end 
  end

 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the Halls and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Halls specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Hall
 # Params:
 # page is the number of pages per Hall
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Halls in one page
  def indexHall
  @q = Vendor.where(entry:'Hall').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end   
  end
 # Author:
 # Donia Magdy, Hanan Hosny
 # Description:
 # this action displays the villas and the results of the search filtering
 # Params:
 # q (this contains a hash of the search parameters that the user passes in)
 # Success:
 # The user gets the list of the Gardens specified in the search params
 # Failure:
 # The user gets a message "no matches found"
 
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the number of items the user wants to show per Garden
 # Params:
 # page is the number of pages per Garden
 # per_page the number of items per page
 # Success:
 # The user views the number of items he specified and can move between pages
 # Failure:
 # The user will only be able to view all the Gardens in one page
  def indexGarden
    @q = Vendor.where(entry:'Garden').ransack(params[:q])

           @per_page = params[:per_page] || Vendor.per_page || 20
           @vendors = @q.result(:distinct=>true).paginate( :per_page => @per_page, :page => params[:page])
    if @vendors.size.zero?
      flash[:notice] = "No Matches Found"
    end   
  end
 
  private
    def vendor_params
      params.require(:vendor).permit(:email, :telephone, :mobile, :address, :name, :image, :entry, :location, :capacity, :stars, :num)
    end
end


