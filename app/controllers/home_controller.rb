class HomeController < ApplicationController
  def index
    skip_policy_scope
    authorize Home
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def home_params
    params[:home]
  end
end
