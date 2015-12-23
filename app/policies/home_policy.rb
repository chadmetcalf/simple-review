class HomePolicy < ApplicationPolicy
  def index?
    true # Open to public
  end
end
