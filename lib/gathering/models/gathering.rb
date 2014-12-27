module Gathering
  class Gathering
    include Lotus::Entity

    self.attributes =  :name, :occasions, :time, :roles

    def occasions
      OccasionsRepository.for_gathering(self)
    end
  end
end
