require "spec_helper"

describe EditablePagesController do
  describe "routing" do

    it "routes to #index" do
      get("/editable_pages").should route_to("editable_pages#index")
    end

    it "routes to #new" do
      get("/editable_pages/new").should route_to("editable_pages#new")
    end

    it "routes to #show" do
      get("/editable_pages/1").should route_to("editable_pages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/editable_pages/1/edit").should route_to("editable_pages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/editable_pages").should route_to("editable_pages#create")
    end

    it "routes to #update" do
      put("/editable_pages/1").should route_to("editable_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/editable_pages/1").should route_to("editable_pages#destroy", :id => "1")
    end

  end
end
