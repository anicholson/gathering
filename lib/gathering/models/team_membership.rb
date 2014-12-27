module Gathering
  class TeamMembership
    include Lotus::Entity

    self.attributes = :id, :person_id, :team_id

    def person
      PersonRepository.find(person_id)
    end

    def team
      TeamRepository.find(team_id)
    end
  end
end