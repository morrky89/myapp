class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
       user ||= User.new # guest user (not logged in)
       if user.admin?
         can :manage, Article
         can :manage, Comment
       else
         can :read, :all
         cannot :destroy, Comment
       end
    
  end
end
