class HomeController < ApplicationController
  def index
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def home_params
    params[:home]
  end
end
