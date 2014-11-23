module Gathering
  class Person
    include Lotus::Entity

    self.attributes = :name, :contact_number, :teams
  end
end
