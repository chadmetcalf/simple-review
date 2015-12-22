class DashboardController < ApplicationController
  def index
    skip_policy_scope
    authorize :dashboard
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def dashboard_params
    params[:dashboard]
  end
end
