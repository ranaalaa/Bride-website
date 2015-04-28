require 'rails_helper'
require 'spec_helper'


RSpec.describe Vendor, type: :model do
 context "with 2 or more packages" do
    it "orders them in reverse chronologically" do
      vendor = Vendor.create!
      package1 = vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")
      package2 = vendor.packages.create!(:name => "package2", :price=> "200.0", :description=> "package2 has")
      expect(vendor.reload.packages).to eq([package1, package2])
    end
  end
  context "average of the packages" do
    it "calculates the averge" do

 vendor = Vendor.create!(:name => "Donia", :entry=> "Yacht",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")
      vendor.packages.create!(:name => "package1", :price=> "600.0", :description=> "package1 has")
      expect(vendor.reload.avgprice).to eq(400.0)

  end
end
end