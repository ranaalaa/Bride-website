  require 'rails_helper'
  require 'spec_helper'

  RSpec.describe Rating, type: :model do
    context "with 2 or more ratings" do 
        it "orders them in reverse chronologically" do 
          vendor = Vendor.create!
          rating1 = vendor.ratings.create!(:score => 3)
          rating2 = vendor.ratings.create!(:score => 5)
          expect(vendor.reload.packages).to eq ([rating1,rating2])
        end
    end
 end
