require 'rails_helper'
require 'spec_helper'


include Warden::Test::Helpers
Warden.test_mode!


RSpec.feature "Vendors", type: :feature do
  describe "Searching" do

  let(:user) { FactoryGirl.create(:user) }
  before { login_as(user, scope: :user )}
   it "searches Djs" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Dj",:location => "Alex")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Dj",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")
    visit 'vendors/indexDjs'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    fill_in 'min', :with => '300'
    click_button 'search'
    expect(page).to have_content 'Hanan'
   end
  
  it "searches Hairdresser" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Hairdresser",:location => "Alex")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Hairdresser",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")

    visit 'vendors/indexHairdressers'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    fill_in 'min', :with => '300'
    click_button 'search'
    expect(page).to have_content 'Hanan'
  end


 it "searches Dresses" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Dress",:location => "Alex")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Dress",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")

    visit 'vendors/indexDresses'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    click_button 'search'
    expect(page).to have_content 'Hanan'
  end
  
  it "searches Suits" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Suit",:location => "Alex")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Suit",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")

    visit 'vendors/indexSuites'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    click_button 'search'
    expect(page).to have_content 'Hanan'
  end
  
 it "searches Halls" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Hall",:location => "Alex", :capacity => "400")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Hall",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")

    visit 'vendors/indexHall'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    fill_in 'mincap', :with => '300'
    fill_in 'maxcap', :with => '700'
    fill_in 'min', :with => '300'
    click_button 'search'
    expect(page).to have_content 'Hanan'
  end
  
  it "searches Garden" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Garden",:location => "Alex", :capacity => "400")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Garden",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")

    visit 'vendors/indexGarden'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    fill_in 'mincap', :with => '300'
    fill_in 'maxcap', :with => '700'
    fill_in 'min', :with => '300'
    click_button 'search'
    expect(page).to have_content 'Hanan'
  end
  
    it "searches Makeup" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Makeup",:location => "Alex")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Makeup",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")

    visit 'vendors/indexMakeup'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    fill_in 'min', :with => '300'
    click_button 'search'
    expect(page).to have_content 'Hanan'
  end
    it "searches photographers" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Photographer",:location => "Alex")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Photographer",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")

    visit 'vendors/indexPhotographers'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    fill_in 'min', :with => '300'
    click_button 'search'
    expect(page).to have_content 'Hanan'
  end   
  it "searches Spas" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Spa",:location => "Alex")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Spa",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")

    visit 'vendors/indexSpa'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    fill_in 'min', :with => '300'
    click_button 'search'
    expect(page).to have_content 'Hanan'
  end
  it "searches Villa" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Villa",:location => "Alex", :capacity => "400")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Villa",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")

    visit 'vendors/indexVilla'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    fill_in 'mincap', :with => '300'
    fill_in 'maxcap', :with => '700'
    fill_in 'min', :with => '300'
    click_button 'search'
    expect(page).to have_content 'Hanan'
  end
   it "searches Yacht" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Yacht",:location => "Alex", :capacity => "400")
   vendor1 = Vendor.create!(:name => "Donia", :entry=> "Yacht",:location => "Cairo")
   vendor.packages.create!(:name => "package1", :price=> "200.0", :description=> "package1 has")

    visit 'vendors/indexYacht'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    fill_in 'mincap', :with => '300'
    fill_in 'maxcap', :with => '700'
    fill_in 'min', :with => '300'
    click_button 'search'
    expect(page).to have_content 'Hanan'
    end
  end 
end

  
  
  
  
  
  
