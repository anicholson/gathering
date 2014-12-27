module Gathering
  class OccasionRepository
    include Lotus::Repository

    def self.for_gathering(gathering)
      query { where(gathering_id: gathering.id) }
    end
  end
end
