require "rails_helper"

RSpec.describe MentionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mentions").to route_to("mentions#index")
    end

    it "routes to #new" do
      expect(:get => "/mentions/new").to route_to("mentions#new")
    end

    it "routes to #show" do
      expect(:get => "/mentions/1").to route_to("mentions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mentions/1/edit").to route_to("mentions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mentions").to route_to("mentions#create")
    end

    it "routes to #update" do
      expect(:put => "/mentions/1").to route_to("mentions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mentions/1").to route_to("mentions#destroy", :id => "1")
    end

  end
end
