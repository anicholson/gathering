require "gathering/version"

%w(gathering occasion person role team helper).each do |model|
  require "gathering/models/#{model}"
end

module Gathering; end
