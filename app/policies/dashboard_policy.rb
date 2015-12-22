class DashboardPolicy < ApplicationPolicy
  def index?
    @user
  end
end
