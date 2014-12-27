module Gathering
  class Person
    include Lotus::Entity

    self.attributes = :name, :contact_number

    def teams
      TeamMembershipRepository.teams_for_person(self)
    end
  end
end
