module Gathering
  class Role
    include Lotus::Entity

    self.attributes = :name, :role_type
  end
end
