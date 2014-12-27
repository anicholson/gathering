module Gathering
  class Team
    include Lotus::Entity
    self.attributes = :name, :people, :leader

    def people
      TeamMembershipRepository.members_of_team(self)
    end

  end
end
