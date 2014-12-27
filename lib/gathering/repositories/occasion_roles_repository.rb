module Gathering
  class OccasionRolesRepository
    include Lotus::Repository

    def self.roles_for_occasion(occasion)
      role_ids = query do
        select(:role_id).where(occasion_id: occasion.id)
      end

      RoleRepository.where(id: role_ids)
    end
  end
end