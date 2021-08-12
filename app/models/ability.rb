class Ability
  def initialize(user)
    user ||= User.new
    
    can :read, :all, public: true

    return unless user.role == 'admin'
    can :crud, :all
  end
end
