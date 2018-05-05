class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.where(user == record.user)
    end
  end

  def show?
    true
  end

  def create?
    # i am not the owner of the toothbrush
    # booking.toothbrush.user != current_user
    true
  end

  def edit?
    true
  end

  def update?
    user == record.user
  end

  def destroy?
    user == record.user
  end

end
