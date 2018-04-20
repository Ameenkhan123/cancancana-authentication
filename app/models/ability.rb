class Ability
  include CanCan::Ability

  def initialize(patient)
    # Define abilities for the passed in patient here. For example:
    #
      patient ||= Patient.new # guest patient (not logged in)
      if patient.admin?
        can :manage, :all
    elsif patient.doctor?
        can [:read, :create], Doctor
        can [:update, :destroy], Doctor, :patient_id => patient.id
    else
        can :read, :all
    end
    #
    # The first argument to `can` is the action you are giving the patient
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the patient can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the patient can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
end
end
