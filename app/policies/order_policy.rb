class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def edit?
    true
  end

  def destroy?
    record.user == user || user.admin?
  end

  def update?
    record.user == user || user.admin?
  end
end
