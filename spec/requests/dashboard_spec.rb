RSpec.describe "Dashboard", type: :request do
  describe "GET /" do
    it "has an authenticated root" do
      get authenticated_root_path
      expect(response).to have_http_status(200)
    end
  end
end
