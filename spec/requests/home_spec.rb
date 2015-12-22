RSpec.describe "Home", type: :request do
  describe "GET /" do
    it "has a root" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end
