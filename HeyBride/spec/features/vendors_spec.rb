require 'rails_helper'
require 'spec_helper'
require 'support/controller_helper'


RSpec.feature "Vendors", type: :feature do

  it "searches Djs" do
   vendor = Vendor.create!(:name => "Hanan", :entry=> "Dj",:location => "Alex")
    visit 'vendors/indexDjs'
    fill_in 'name', :with => 'Hanan'
    fill_in 'location', :with => 'Alex'
    click_button 'search'
    expect(page).to have_content 'Hanan'
  end
end
