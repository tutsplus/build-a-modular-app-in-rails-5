require "cancan"

module News
  module Links
    class AbilityDecorator
      include CanCan::Ability

      def initialize(user)
        unless user.admin?
          can :manage, News::Links::Link, user_id: user.id
        end
      end
    end
  end
end

News::Ability.add_ability(News::Links::AbilityDecorator)
