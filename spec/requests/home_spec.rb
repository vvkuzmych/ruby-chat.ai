require 'rails_helper'

RSpec.describe "Home", type: :request do
  describe "GET /" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end

    it "renders the home page" do
      get "/"
      expect(response.body).to include("Ruby chat")
    end
  end
end