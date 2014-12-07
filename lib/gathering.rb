require 'yaml'
require 'pathname'

require 'lotus/model'
require 'gathering/version'

%w(gathering occasion person role team).each do |model|
  require "gathering/models/#{model}"
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
end
