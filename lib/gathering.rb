require 'lotus/model'
require 'gathering/version'

%w(gathering occasion person role team).each do |model|
  require "gathering/models/#{model}"
end

module Gathering; end
