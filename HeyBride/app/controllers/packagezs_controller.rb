class PackagezsController < ApplicationController
    def create
    @post = Post.find(params[:post_id])
    @packagez = @post.packagezs.create(packagez_params)
    redirect_to post_path(@post)
  end
 
  private
    def packagez_params
      params.require(:packagez).permit(:name, :price, :description)
    end
end
