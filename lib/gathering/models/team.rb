module Gathering
  class Team
    include Lotus::Entity
    self.attributes = :name, :people, :leader
  end
end
