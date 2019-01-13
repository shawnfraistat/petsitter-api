require "rails_helper"

RSpec.describe SittersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sitters").to route_to("sitters#index")
    end


    it "routes to #show" do
      expect(:get => "/sitters/1").to route_to("sitters#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sitters").to route_to("sitters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sitters/1").to route_to("sitters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sitters/1").to route_to("sitters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sitters/1").to route_to("sitters#destroy", :id => "1")
    end

  end
end
