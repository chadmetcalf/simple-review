class RubricPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      return [] unless user.admin?
      # scope.where(creator: user, active: true)
      scope
    end
  end

  def show?
    scope.where(creator: user)
  end

  def create?
    user.admin?
  end

  def update?
    user.admin? && record.creator == user
  end

  def destroy?
    user.admin? && record.creator
  end

  def permitted_attributes
    [:creator, :name, :description, :active]
  end
end
