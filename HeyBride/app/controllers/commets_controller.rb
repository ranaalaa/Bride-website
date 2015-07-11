class CommetsController < ApplicationController
      def create
                
                @post = Post.find(params[:post_id])
                @commet = @post.commets.create(commet_params)
                redirect_to post_path(@post)
      
      
    end
      def destroy
    @post = Post.find(params[:post_id])
    @commet = @post.commets.find(params[:id])
    @commet.destroy
    redirect_to post_path(@post)
  end

 private
    def commet_params
      params.require(:commet).permit(:body, :commeter, :commeteremail)
    end
end
