class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def show?
    record.user == user
  end
  def update?
    show?
  end
  def public?
    true
  end
end
