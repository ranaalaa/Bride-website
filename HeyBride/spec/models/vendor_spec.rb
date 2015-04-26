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
   context "with 2 comments" do
    it "orders them in reverse chronologically" do
      vendor = Vendor.create!
      comment1 = vendor.comments.create!(:body => "comment1")
      comment2 = vendor.comments.create!(:body => "comment2")
      expect(vendor.reload.comments).to eq([comment1, comment2])
    end
  end
end

