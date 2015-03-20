class SpasamplesController < ApplicationController
    
   def create
    @post = Post.find(params[:post_id])
    @spasample = @post.spasamples.create(spasample_params)
    redirect_to post_path(@post)
  end
 
  private
    def spasample_params
      params.require(:spasample).permit(:image)
    end
end