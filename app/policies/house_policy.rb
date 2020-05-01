class HousePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    user
  end
  def new?
    create?
  end
  def index?
    true
  end

  def show?
    true
  end
end
