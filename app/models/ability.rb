class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      if user.has_role?(:admin)
        # Admins
        can :manage, :all
      else
        # Registered users
        can :read, :all
      end
    else
      # Guest users
      can :read, :all
    end
  end
end
