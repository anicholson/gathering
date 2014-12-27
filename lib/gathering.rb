require 'yaml'
require 'pathname'

require 'lotus/model'
require 'gathering/version'

%w(gathering occasion person role team team_membership).each do |model|
  require "gathering/models/#{model}"
  require "gathering/repositories/#{model}_repository.rb"
end

module Gathering
  def dummy
    Gathering.new(example_yaml)
  end

  def example_yaml
    YAML.load_file(
      Pathname.new(__FILE__)
              .join('..', 'gathering', 'example.yml')
    )[:gathering]
  end

  REPOSITORIES = [
    GatheringRepository,
    OccasionRepository,
    PersonRepository,
    RoleRepository,
    TeamRepository
  ]
end
