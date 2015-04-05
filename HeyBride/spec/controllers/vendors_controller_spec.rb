require 'rails_helper'
require 'spec_helper'
require 'support/controller_helper'


RSpec.describe VendorsController, type: :controller do
    describe "GET indexYacht" do
    it "assigns @vendors" do
      sign_in
      vendor = Vendor.create!(:name => "Yacht1", :entry=> "Yacht")
      get :indexYacht
      expect(assigns(:vendors)).to eq([vendor])
    end

    it "renders the index template" do
      sign_in 
      get :indexYacht
      expect(response).to render_template("indexYacht")
    end
    
  end
     describe "GET indexVilla" do
    it "assigns @vendors" do
      sign_in
      vendor = Vendor.create!(:name => "Villa1", :entry=> "Villa")
      get :indexVilla
      expect(assigns(:vendors)).to eq([vendor])
    end

    it "renders the index template" do
      sign_in 
      get :indexVilla
      expect(response).to render_template("indexVilla")
    end
  end
end
