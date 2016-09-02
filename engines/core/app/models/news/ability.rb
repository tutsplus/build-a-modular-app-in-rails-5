module News
  class Ability
    include CanCan::Ability

    def initialize(user)
      user ||= User.new # guest
      if user.admin?
        can :manage, :all
      else
        can :read, :homepage
      end
    end
  end
end
