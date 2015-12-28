class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    skip_policy_scope
    authorize :home
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def home_params
    params[:home]
  end
end
