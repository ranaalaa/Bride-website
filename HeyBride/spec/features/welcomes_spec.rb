require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

RSpec.feature "Welcomes", type: :feature do
  describe "Searching" do
    let(:user) { FactoryGirl.create(:user) }
    before { login_as(user, scope: :user )}
    it "returns vendors" do
      vendor = Vendor.create!(:name => "Hanan", :entry=> "Dj",:location => "Alex")
      vendor1 = Vendor.create!(:name => "Hanan", :entry=> "Haidresser",:location => "Cairo")
      visit 'welcome/HomePage'
      fill_in 'Search by name', :with => 'Hanan'
      click_button 'submit'
      expect(page).to have_content 'Hanan'
    end
    it "returns matches not found" do
      vendor = Vendor.create!(:name => "Hanan", :entry=> "Dj",:location => "Alex")
      vendor1 = Vendor.create!(:name => "Hanan", :entry=> "Haidresser",:location => "Cairo")
      visit 'welcome/HomePage'
      fill_in 'Search by name', :with => 'Donia'
      click_button 'submit'
      expect(page).to have_content 'Matches Not Found'
    end
  end
end
