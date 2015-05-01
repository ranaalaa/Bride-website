require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

RSpec.feature "Welcomes", type: :feature do
  describe "paginate" do
    let(:user) { FactoryGirl.create(:user) }
    before { login_as(user, scope: :user )}
    it "returns vendors" do
      vendor = Vendor.create!(:name => "Hanan", :entry=> "Dj")
      vendor1 = Vendor.create!(:name => "Dodo", :entry=> "Dj")
       vendor2 = Vendor.create!(:name => "Hanan", :entry=> "Dj")
      vendor3= Vendor.create!(:name => "Dodo", :entry=> "Dj")
       vendo4 = Vendor.create!(:name => "Hanan", :entry=> "Dj")
      vendor5 = Vendor.create!(:name => "Dodo", :entry=> "Dj")
      visit 'welcome/HomePage'
      click_link 'Dj'
      expect(page).to have_content '5'
    end
  end

  describe "Searching" do
    let(:user) { FactoryGirl.create(:user) }
    before { login_as(user, scope: :user )}
    it "returns vendors" do
      vendor = Vendor.create!(:name => "Hanan", :entry=> "Dj",:location => "Alex")
      vendor1 = Vendor.create!(:name => "Hanan", :entry=> "Hairdresser",:location => "Cairo")
      visit 'welcome/HomePage'
      fill_in 'Search by name', :with => 'Hanan'
      click_button 'submit'
      expect(page).to have_content 'Hanan'
    end
    it "returns matches not found" do
      vendor = Vendor.create!(:name => "Hanan", :entry=> "Dj",:location => "Alex")
      vendor1 = Vendor.create!(:name => "Hanan", :entry=> "Hairdresser",:location => "Cairo")
      visit 'welcome/HomePage'
      fill_in 'Search by name', :with => 'Donia'
      click_button 'submit'
      expect(page).to have_content 'Matches Not Found'
    end
  end
end
