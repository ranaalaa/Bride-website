class CommentsController < ApplicationController
 # Author:
 # Hanan Hosny
 # Description:
 # this action creats the comments of a certian vendor
 # Params:
 # the vendor_id to get the venodr that the user wants to comment on, and for the comment tha params are the body 
 # Success:
 # The user is able to comment on the the vendor and the comment is the displayed on the vendor show page
 # Failure:
 # none
	 def create
    @vendor = Vendor.find(params[:vendor_id])
    @comment = @vendor.comments.create(comment_params)
    redirect_to vendor_path(@vendor)
  end
 # Author:
 # Hanan Hosny
 # Description:
 # This method is for the admin to delete certain comment
 # Params:
 # the vendor_id to get the venodr that the user wants to comment on, and for the comment tha params are the body 
 # Success:
 # The admin is able to delete the comment and redirected to the show page of the vendor
 # Failure:
 # none
  def destroy
    @vendor = Vendor.find(params[:vendor_id])
    @comment = @vendor.comments.find(params[:id])
    @comment.destroy
    redirect_to vendor_path(@vendor)
  end
 # Author:
 # Hanan Hosny
 # Description:
 # This method is a private method decripes the comment params
 # Params:
 # the comment params which is the body
  private
    def comment_params
      params.require(:comment).permit(:body, :commenter)
    end
end
