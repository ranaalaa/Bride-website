class DsamplesController < ApplicationController
     def create
    @dress = Dress.find(params[:dress_id])
    @dsample = @dress.dsamples.create(params[:photo])
    redirect_to dress_path(@dress)
  end
end
