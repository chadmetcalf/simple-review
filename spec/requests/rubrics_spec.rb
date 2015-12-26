require 'rails_helper'

RSpec.describe "Rubrics", :type => :request do
  describe "GET /rubrics" do
    it "responds successfully" do
      sign_in_admin
      get rubrics_path
      expect(response).to have_http_status(200)
    end
  end
end
