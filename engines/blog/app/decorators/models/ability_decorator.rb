require "cancan"

module News
  module Blog
    class AbilityDecorator
      include CanCan::Ability

      def initialize(user)
        unless user.admin?
          can :manage, News::Blog::Entry, user_id: user.id
        end
      end
    end
  end
end

News::Ability.add_ability(News::Blog::AbilityDecorator)
