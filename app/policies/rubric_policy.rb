class RubricPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      return [] unless user.admin?
      scope.where(created_by: user)
    end
  end

  def create?
    user.admin?
  end

  def update?
    user.admin? && record.created_by == user
  end

  def destroy?
    user.admin? && record.created_by
  end

  def permitted_attributes
    [:reviewee, :created_by, :closed, :closed_by, :closed_at]
  end
end
