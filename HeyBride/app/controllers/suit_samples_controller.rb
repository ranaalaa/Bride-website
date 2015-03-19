class SuitSamplesController < ApplicationController
    def create
    @suit= Suit.find(params[:suit_id])
    @suit_sample = @suit.suit_samples.create(params[:samples])
    redirect_to suit_path(@suit)
  end
 
end
