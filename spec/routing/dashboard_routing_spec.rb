RSpec.describe DashboardController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/").to route_to("dashboard#index")
    end
  end
end
