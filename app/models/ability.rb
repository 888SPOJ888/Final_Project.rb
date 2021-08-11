class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
      if user.role == "admin"
        can :manage, :all 
      elseif user == User.current
        can :read 
      end
  end
end
