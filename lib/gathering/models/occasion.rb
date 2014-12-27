module Gathering
  class Occasion
    include Lotus::Entity

    self.attributes = :date, :time

    def gathering
      GatheringRepository.find(self.id)
    end
  end
end
