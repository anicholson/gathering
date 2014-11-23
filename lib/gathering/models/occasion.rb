module Gathering
  class Occasion
    include Lotus::Entity

    self.attributes = :gathering, :date, :time
  end
end
