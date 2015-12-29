class IndicatorPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def permitted_attributtes
    [:creator, :rubric_id, :active, :description, :order]
  end
end
