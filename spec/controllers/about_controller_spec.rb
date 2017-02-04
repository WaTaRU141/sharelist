require 'rails_helper'

RSpec.describe AboutController, type: :controller do

  describe "GET #resources" do
    it "returns http success" do
      get :resources
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #only:[:index]" do
    it "returns http success" do
      get :only:[:index]
      expect(response).to have_http_status(:success)
    end
  end

end
