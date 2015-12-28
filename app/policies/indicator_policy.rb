class IndicatorPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def permitted_attributtes
    [:created_by, :rubric_id, :active, :description, :order]
  end
end
