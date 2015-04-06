require 'rails_helper'
require 'spec_helper'
require 'support/controller_helper'


RSpec.describe VendorsController, type: :controller do

  describe "GET indexDjs" do
    it "assigns @vendors" do
      sign_in
      vendor = Vendor.create!(:name => "Hanan", :entry=> "Dj")
      get :indexDjs
      expect(assigns(:vendors)).to eq([vendor])
    end

    it "renders the index template" do
      sign_in 
      get :indexDjs
      expect(response).to render_template("indexDjs")
    end
  end
end
