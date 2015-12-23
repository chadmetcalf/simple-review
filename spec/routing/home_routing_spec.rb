RSpec.describe HomeController, type: :routing do
  describe "routing" do
    xit "routes to #index" do
      expect(get: "/").to route_to("home#index")
    end
  end
end
