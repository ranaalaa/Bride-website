class CommentsController < ApplicationController
	 def create
    @vendor = Vendor.find(params[:vendor_id])
    @comment = @vendor.comments.create(comment_params)
    redirect_to vendor_path(@vendor)
  end


   def destroy
    @vendor = Vendor.find(params[:vendor_id])
    @comment = @vendor.comments.find(params[:id])
    @comment.destroy
    redirect_to vendor_path(@vendor)
  end
 
 
  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
