class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end

    def index?
      true
    end

    def show?
      index?
    end

    def new?
      create?
    end

    def create?
      true
    end

    def edit?
      update?
    end

    def update?
      user.admin ? true : owner_of?
    end

    def destroy?
      user.admin ? true : owner_of?
    end

    private

    def owner_of?
      record.user == user
    end
  end
end
