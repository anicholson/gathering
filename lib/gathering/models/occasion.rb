module Gathering
  class Occasion
    include Lotus::Entity

    self.attributes = :date, :time

    def gathering
      GatheringRepository.find(self.id)
    end

    def roles
      OccasionRolesRepository.roles_for_occasion(self)
    end
  end
end
