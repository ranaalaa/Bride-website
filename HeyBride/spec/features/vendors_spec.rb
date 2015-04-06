require 'rails_helper'
require 'spec_helper'


include Warden::Test::Helpers
Warden.test_mode!


RSpec.feature "Vendors", type: :feature do
  describe "AuthenticationPages" do

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
  end
end
