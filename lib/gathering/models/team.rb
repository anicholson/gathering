module Gathering
  class Team
    include Lotus::Entity
    self.attributes = :name, :people, :leader_id

    def people
      TeamMembershipRepository.members_of_team(self)
    end

    def leader
      PersonRepository.find(self.leader_id)
    end
  end
end
