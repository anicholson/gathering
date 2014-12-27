module Gathering
  class TeamMembershipRepository
    include Lotus::Repository

    def self.teams_for_person(person)
      team_ids = query do
        select(:team_id).where(person_id: person.id)
      end

      TeamRepository.where(id: team_ids)
    end

    def self.members_of_team(team)
      person_ids = query do
        select(:person_id).where(team_id: team.id)
      end

      PersonRepository.where(id: person_ids)
    end
  end
end