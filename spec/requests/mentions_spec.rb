require 'rails_helper'

RSpec.describe "Mentions", :type => :request do
  describe "GET /mentions" do
    it "works! (now write some real specs)" do
      get mentions_path
      expect(response.status).to be(200)
    end
  end
end
