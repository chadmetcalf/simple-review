RSpec.describe DashboardController, type: :routing do
  describe "routing" do
    xit "routes to #index" do
      expect(get: "/").to route_to("dashboard#index")
    end
  end
end
