module News
  class Ability
    include CanCan::Ability

    class_attribute :abilities
    self.abilities = Set.new

    def self.add_ability(ability)
      self.abilities.add(ability)
    end

    def self.remove_ability(ability)
      self.abilities.delete(ability)
    end

    def initialize(user)
      user ||= User.new # guest
      if user.admin?
        can :manage, :all
      else
        can :read, :homepage
      end

      Ability.abilities.each do |ability|
        ab = ability.send(:new, user)
        ab.send(:rules).each do |rule|
          rules << rule
          add_rule_to_index(rule, rules.size - 1)
        end
      end
    end
  end
end
